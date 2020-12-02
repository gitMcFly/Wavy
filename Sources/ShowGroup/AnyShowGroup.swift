//
//  AnyShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import MixedGroup
@_exported import enum StationGroup.Network
import unstandard

public struct AnyShowGroup: ShowGroup {
    public enum Contents {
        case empty
        case solo(_ show: AnyShow)
        case shows(_ shows: [AnyShow])
        case subgroups(_ groups: [AnyShowGroup])
        
    }
    
    public struct Properties {
        fileprivate(set) var contents = Contents.empty
        var network: Network?
        
    }
    
    internal var properties = Properties()
    
    public var showGroupBody: some ShowGroup {
        return self
    }
    
    
    // MARK: - Initializers
    
    public init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup {
        let contents = subgroups.map { $0[\.contents] }
        
        if contents.allSatisfy(\.isSolo) {
            properties.contents = .shows(contents.flatMap(\.shows))
            
        } else {
            properties.contents = .subgroups(subgroups.map(AnyShowGroup.init(other:)))
            
        }
    }
    
    public init<Subgroup>(other: Subgroup) where Subgroup : ShowGroup {
        properties.network = (other[\.network] ?? type(of: other).network).if { $0 != .unknown }
        properties.contents = other[\.shows]
            .map { .init(other: $0.network(properties.network)) }
            .wrap { .shows($0) }
        
    }
    
    public init<IndividualShow>(show: IndividualShow) where IndividualShow : Show {
        properties.contents = .solo(show)
        
    }
    
    public init() {
        
    }
    
}

public extension AnyShowGroup.Contents {
    static func solo<Solo>(_ show: Solo) -> Self where Solo: Show {
        Self.solo(AnyShow(other: show))
    }
    
    var isSolo: Bool {
        guard case .solo = self else { return false }
        return true
    }
    
    @SingleResult var shows: [AnyShow] {
        switch self {
        case .empty:
            [AnyShow]()
            
        case .solo(let show):
            [show]
            
        case .shows(let shows):
            shows
            
        case .subgroups(let subgroups):
            subgroups.flatMap(\.properties.contents.shows)
            
        }
    }
    
    var subgroups: [AnyShowGroup] {
        guard case .subgroups(let subgroups) = self else { fatalError() }
        return subgroups
    }
    
}

public extension ShowGroup {
    typealias Contents = AnyShowGroup.Contents
    
    subscript<V>(keyPath: KeyPath<Contents, V>) -> V where V : ExpressibleByNilLiteral {
        let properties: Properties
        
        if let _self = self as? AnyShowGroup {
            properties = _self.properties
            
        } else if let _body = showGroupBody as? AnyShowGroup {
            properties = _body.properties
            
        } else {
            return nil
            
        }
        
        return properties.contents[keyPath: keyPath]
    }
    
}


//

public typealias AnyShowGroupBuilder = ShowGroupBuilder<AnyShowGroup>

public extension AnyShowGroupBuilder {
    static func buildExpression<SG>(_ showGroup: SG) -> AnyShowGroup where SG : ShowGroup {
        AnyShowGroup(other: showGroup)
    }
    
}


//

extension Array: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = []
    }
    
}
