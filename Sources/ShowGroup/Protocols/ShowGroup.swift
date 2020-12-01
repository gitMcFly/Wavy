//
//  ShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import StationGroup

public protocol ShowGroup {
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

extension ShowGroup {
    fileprivate var _self: AnyShowGroup {
        get { self as! AnyShowGroup }
        set { self = newValue as! Self }
    }
    
    subscript<V>(propertyKeyPath: KeyPath<Properties, V>) -> V {
        switch propertyKeyPath {
        case \Properties.contents.shows:
            let network = self[\.network]
            return body[\.contents.shows].map( { $0.network(network) }) as! V
            
        default:
            break
            
        }
        
        guard self is AnyShowGroup else { fatalError() }
        return _self.properties[keyPath: propertyKeyPath]
    }
    
}
