//
//  _StationGroup.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Wavy

internal protocol _StationGroup: StationGroup {
    @SetResult var stations: Set<RadioStation> { get }
    
}
