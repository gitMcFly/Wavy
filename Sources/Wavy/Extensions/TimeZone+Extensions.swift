//
//  TimeZone.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

import Foundation

public extension TimeZone {
    static var atlanta: TimeZone! {
        .newYork
    }
    
    static var newYork: TimeZone! {
        TimeZone(identifier: "America/New_York")
    }
    
}
