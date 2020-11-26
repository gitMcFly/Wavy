//
//  Chattanooga.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import StationGroup
import unstandard

extension Tennessee {
    struct Chattanooga: _StationGroup {
        var stations: Set<RadioStation> {
            RadioStation("wsmc", .fm(90, 5))
                .broadcastCity("Collegedale")
                .url("https://www.southern.edu/wsmc/")
            
            Station("wdef", .fm(92, 3)) // adult contemporary
                .url(authority: "sunny923.com")
            
            Station("wplz", "Big", .fm(95, 3))
                .frequencyDesignator(.hidden)
                .slogan("Chattanooga's Greatest Hits")
                .url(authority: "big953.com")
            
            Station("wali", "Alive", .fm(96, 9))
                .broadcastCity("Cleveland")
                .slogan("Cleveland's Lite Rock")
                .url(authority: "alive969.com")
            
            Station("wogt", "Nash Icon", .fm(107, 9))
                .temporaryTitle("Christmas", through: (25, 12, 2020))
                .frequencyDesignator(.hidden)
                .broadcastCity("East Ridge")
                .url(authority: "1079nashicon.com")
            
            Station("wutc", .fm(88, 1))
                .frequencyDesignator(.hidden)
                .slogan("Essential news. Eclectic music. Everyday.")
                .url(authority: "wutc.org")
            
            Station("wawl", "WAWL Chattanooga State Community College")
                .url("https://wawl.org")
            
        }
        
    }
    
}
