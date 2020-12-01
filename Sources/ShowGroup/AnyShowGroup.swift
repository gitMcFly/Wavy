//
//  AnyShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

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
    
    public var body: AnyShowGroup {
        return self
    }
    
    // MARK: - Initializers
    
    public init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup {
        properties.contents = .subgroups(subgroups.map(AnyShowGroup.init(other:)))
        
    }
    
    public init<Subgroup>(other: Subgroup) where Subgroup : ShowGroup {
        properties.contents = Contents.shows(other[\.shows])
        
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
    
}

public extension ShowGroup {
    typealias Contents = AnyShowGroup.Contents
    
    subscript(keyPath: KeyPath<Contents, [AnyShow]>) -> [AnyShow] {
        guard let _self = self as? AnyShowGroup else { return [] }
        return _self.properties.contents[keyPath: keyPath]
    }
    
}

public typealias AnyShowGroupBuilder = ShowGroupBuilder<AnyShowGroup>
