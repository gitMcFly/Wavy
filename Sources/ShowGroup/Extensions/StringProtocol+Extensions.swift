//
//  StringProtocol+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

internal extension StringProtocol {
    func `as`<Other: ExpressibleByStringLiteral>(_ type: Other.Type) -> Other where Other.StringLiteralType == Self {
        Other(stringLiteral: self)
    }
    
}
