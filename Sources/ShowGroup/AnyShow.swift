//
//  AnyShow.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import StationGroup

public struct AnyShow: Show, ExpressibleByStringLiteral {
    public struct Properties {
        public var title: String?
        public var subtitle: String?
        
        public var network: Network?
        public var siteReference: SiteReference?
        
    }
    
    internal var properties = Properties()
    
    public init<Other>(other: Other) where Other: Show {
        properties.title = other[\.title]
        properties.subtitle = other[\.subtitle]
        properties.network = other[\.network]
        properties.siteReference = other[\.siteReference]
        
    }
    
    public init(stringLiteral value: StringLiteralType) {
        properties.title = Self.title(for: value)
        
    }
    
}


// MARK: - 

fileprivate extension AnyShow {
    static func title(for stringLiteralValue: StringLiteralType) -> String {
        stringLiteralValue
    }
    
}
