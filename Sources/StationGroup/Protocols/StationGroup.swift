//
//  StationGroup.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

public protocol StationGroup {
    var stations: Set<RadioStation> { get }
    
}

public extension StationGroup {
    typealias Station = RadioStation
    
}
