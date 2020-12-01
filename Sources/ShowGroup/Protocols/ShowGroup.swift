//
//  ShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import MixedGroup
import StationGroup

public protocol ShowGroup {
    static var network: Network { get }
    
    associatedtype ShowGroupBody: ShowGroup
    @AnyShowGroupBuilder var showGroupBody: ShowGroupBody { get }
    
    typealias Properties = AnyShowGroup.Properties
    
    init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup
    init<IndividualShow>(show: IndividualShow) where IndividualShow : Show
    
}

extension ShowGroup {
    public init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup {
        fatalError("Replace this with `AnyShowGroup` or implement in subclass")
    }
    
    public init<IndividualShow>(show: IndividualShow) where IndividualShow : Show {
        fatalError("Replace this with `AnyShowGroup` or implement in subclass")
    }
    
}

public extension ShowGroup {
    static var network: Network { nil }
    
}

extension ShowGroup {
    fileprivate var _self: AnyShowGroup {
        get { self as! AnyShowGroup }
        set { self = newValue as! Self }
    }
    
    subscript<V>(propertyKeyPath: KeyPath<Properties, V>) -> V {
        if self is AnyShowGroup {
            return _self.properties[keyPath: propertyKeyPath]
            
        } else {
            switch propertyKeyPath {
            case \Properties.contents.shows:
                let network = self[\.network]
                return showGroupBody[\.contents.shows].map { $0.network(network) } as! V
                
            case \Properties.network:
                return Self.network as! V
                
            default:
                fatalError()
                
            }
        }
    }
    
}

extension ForEach: ShowGroup where Data.Element : Show {
    public var showGroupBody: some ShowGroup {
        let subgroups = data.map { AnyShowGroup(show: $0) }
        return AnyShowGroup(subgroups: subgroups)
    }
    
}
