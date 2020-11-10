//
//  TriCities.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

extension Tennessee {
    struct TriCities: _StationGroup {
        var stations: Set<Station> {
            Station("wcsk", .fm(90, 3))
                .broadcastCity("Kingsport")
                .url("https://www.k12k.com/apps/pages/index.jsp?uREC_ID=346032&type=d&pREC_ID=754402")
            
            Station("wets", .fm(89, 5))
                .broadcastCity("Johnson City")
                .url("https://www.etsu.edu/wets/")
            
            Station("wfhg", .fm(92, 9))
                .url(authority: "supertalkwfhg.com")
            
            Station("whcb", .fm(91, 5))
                .url(authority: "whcbradio.com")
            
            Station("wopi", "ESPN Tri-Cities", .fm(98, 1))
                .ignoreBroadcastCityInTitle()
                .url("https://www.hvbcgroup.com/wopi/")
            
            Station("wrzk", .fm(95, 9))
                .url(authority: "wrzk.com")
            
            Station("wtfm", .fm(98, 5))
                .url(authority: "wtfm.com")
            
            Station("wvek", "Classic Hits", .fm(102, 7))
                .url(authority: "classichits1027.com")
            
            Station("wxbq", .fm(96, 9))
                .url(authority: "wxbq.com")
            
        }
        
    }
    
}
