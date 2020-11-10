//
//  Chattanooga.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Wavy
import unstandard

extension Tennessee {
    struct Chattanooga: _StationGroup {
        var stations: Set<RadioStation> {
            Station("wdef", .fm(92, 3)) // adult contemporary
                .url(authority: "sunny923.com")
            
            Station("wogt", "Nash Icon", .fm(107, 9))
                .temporaryTitle("Christmas", through: (25, 12, 2020))
                .broadcastCity("East Ridge")
                .url(authority: "1079nashicon.com")
            
            Station("wutc", .fm(88, 1))
                .url(authority: "wutc.org")
            
        }
        
    }
    
}
