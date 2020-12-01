//
//  Show.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import StationGroup

public protocol Show {
    
}

extension Show {
    public typealias Properties = AnyShow.Properties
    
}


// MARK: - Accessing `Show` properties

public extension Show {
    fileprivate var _self: AnyShow {
        get { self as! AnyShow }
        set { self = newValue as! Self }
    }
    
    subscript<V>(propertyKeyPath: WritableKeyPath<Properties, Optional<V>>) -> V? {
        set { _self.properties[keyPath: propertyKeyPath] = newValue }
        get {
            guard let _self = self as? AnyShow else { return nil }
            return _self.properties[keyPath: propertyKeyPath]
        }
    }
    
    subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        set { _self.properties[keyPath: propertyKeyPath] = newValue }
        get {
            guard self is AnyShow else { fatalError("Missing inplementation for \(type(of: self))[\(propertyKeyPath)]") }
            return _self.properties[keyPath: propertyKeyPath]
        }
    }
    
}


// MARK: - Property Setters

extension Show {
    func network(_ network: Network?) -> Show {
        var new = self
        new[\.network] = network
        return new
    }
    
}
