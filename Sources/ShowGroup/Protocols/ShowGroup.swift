//
//  ShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import StationGroup

public protocol ShowGroup {
    static var network: Network { get }
    
    associatedtype Body: ShowGroup
    @AnyShowGroupBuilder var body: Body { get }
    
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
                return body[\.contents.shows].map { $0.network(network) } as! V
                
            case \Properties.network:
                return Self.network as! V
                
            default:
                fatalError()
                
            }
        }
    }
    
}
