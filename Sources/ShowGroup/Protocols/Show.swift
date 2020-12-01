//
//  Show.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

public protocol Show {
    
}

extension Show {
    public typealias Properties = AnyShow.Properties
    
}


// MARK: - Accessing Show's properties

public extension Show {
    subscript<V>(property: KeyPath<Properties, Optional<V>>) -> V? {
        guard let _self = self as? AnyShow else { return nil }
        return _self.properties[keyPath: property]
    }
    
    subscript<V>(property: KeyPath<Properties, V>) -> V {
        guard let _self = self as? AnyShow else { fatalError() }
        return _self.properties[keyPath: property]
    }
    
}
