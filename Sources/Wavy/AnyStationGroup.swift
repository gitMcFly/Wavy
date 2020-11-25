//
//  StationGroup.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import unstandard

public struct AnyStationGroup: StationGroup {
    public typealias Station = RadioStation
    
    @Memoized public var stations: Set<RadioStation>
    
    public init(market: Market? = nil, @SetResult _ stations: @escaping () -> Set<RadioStation>) {
        self._stations = Memoized {
            if let market = market {
                return stations()
                    .map {
                        var new = $0
                        new[\.market] = market
                        return new
                    }
                    .asSet()
                
            } else {
                return stations()
                
            }
        }
    }
    
}
