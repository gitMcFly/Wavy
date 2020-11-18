//
//  NYC.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

import Foundation

extension NewYork {
    struct NYC: _StationGroup {
        var stations: Set<Station> {
            Station("wnyc-fm", .fm(93, 9))
                .displayCallLetters("wnyc")
                .url(authority: "wnyc.org")
            
            Station("wqxr-fm", "Classical New York", .fm(105, 9))
                .displayCallLetters("wqxr")
                .callLetters(.trailing)
                .frequencyDesignator(.hidden)
                .ignoreBroadcastCityInTitle()
                .url(authority: "wqxr.org")
            
        }
        
    }
    
}
