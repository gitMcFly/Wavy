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
    public func url(authority: String) -> some Show {
        var new = self
        new[\.siteReference] = .authority(authority)
        return new
    }
    
    public func url(_ pageURL: String) -> some Show {
        var new = self
        new[\.siteReference] = .pageURL(pageURL)
        return new
    }
    
}

extension StringProtocol where Self == AnyShow.StringLiteralType {
    public func url(authority: String) -> some Show {
        self.as(AnyShow.self)
            .url(authority: authority)
    }
    
    public func url(_ pageURL: String) -> some Show {
        self.as(AnyShow.self)
            .url(pageURL)
    }
    
}


// MARK: -


extension Show {
    public func network(_ network: Network?) -> some Show {
        var new = self
        new[\.network] = network
        return new
    }
    
}

extension StringProtocol where Self == AnyShow.StringLiteralType {
    public func network(_ network: Network?) -> some Show {
        var new = AnyShow(stringLiteral: self)
        new[\.network] = network
        return new
    }
    
}


// MARK: -

extension Show {
    public func title(_ title: String) -> some Show {
        var new = self
        new[\.title] = title
        return new
    }
    
    public func subtitle(_ subtitle: String) -> some Show {
        let joinedTitle = [self[\.title], subtitle]
            .compactMap { $0 }
            .joined(separator: " ")
        
        return self.title(joinedTitle)
    }
    
}

extension StringProtocol where Self == AnyShow.StringLiteralType {
    public func subtitle(_ subtitle: String) -> some Show {
        self.as(AnyShow.self)
            .subtitle(subtitle)
    }
    
}
