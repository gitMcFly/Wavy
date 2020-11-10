//
//  StationGroup.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import unstandard

public struct StationGroup {
    @Memoized public var stations: Set<RadioStation>
    
    public init(@ArrayBuilder _ stations: @escaping () -> Array<RadioStation>) {
        self._stations = .init { Set(stations()) }
        
    }
    
}
