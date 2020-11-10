//
//  Atlanta.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

extension Georgia {
    struct Atlanta: _StationGroup {
        var stations: Set<Station> {
            Station("WSB-FM", "B-", .fm(98, 5))
                .url(authority: "b985.com")
            
            Station("waec", "Love", .am(860))
                .url(authority: "love860.com")
            
            Station("wniv", "Faith Talk", .am(970))
                .url(authority: "faithtalk970.com")
            
            Station("wtza", "Radio Punjab", .am(1010))
                //.url(authority: "wtza.net")
            
            Station("wafs", "Relevant Radio", .am(1190))
            
        }
        
    }
    
}
