//
//  ShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import Foundation
import ShowGroup
import unstandard

public struct NPR: ShowGroup {
    public static let network = Network.npr
    
    public var showGroupBody: some ShowGroup {
        "Morning Edition"
            .url("https://www.npr.org/programs/morning-edition/")
        
        "Weekend Edition"
            .subtitle("Saturday")
            .url("https://www.npr.org/programs/weekend-edition-saturday/")
        
        "Weekend Edition"
            .subtitle("Sunday")
            .url("https://www.npr.org/programs/weekend-edition-sunday/")
        
        "All Things Considered"
            .url("https://www.npr.org/programs/all-things-considered/")
        
        "Fresh Air"
            .url("https://www.npr.org/programs/fresh-air/")
        
        "1A"
            .url("https://the1a.org")
        
        "Here & Now"
            .url("https://www.wbur.org/hereandnow")
        
    }
    
    public init() { }
    
}
