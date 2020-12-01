//
//  AnyShow.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import StationGroup

public struct AnyShow: Show, ExpressibleByStringLiteral {
    public struct Properties {
        var title: String?
        var network: Network?
        var siteReference: SiteReference?
        
    }
    
    internal var properties: Properties
    
    public init<Other>(other: Other) where Other: Show {
        properties = Properties()
        properties.title = other[\.title]
        
    }
    
    public init(stringLiteral value: StringLiteralType) {
        properties = Properties(title: value)
        
    }
    
}

