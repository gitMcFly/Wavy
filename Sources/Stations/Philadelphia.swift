//
//  Provider.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

struct Philadelphia: _StationGroup {
    var stations: Set<Station> {
        Station("wbeb", "B-", .fm(101, 1))
            .url(authority: "b101philly.radio.com")
        
        Station("wdas", .fm(105, 3)) // urban adult
            .url(authority: "wdasfm.iheart.com")
        
        Station("wip", "94 WIP Sports Radio", .fm(94, 1))
            .url(authority: "94wip.radio.com")
            .ignoreFrequencyInTitle()
        
        Station("wmgk", "Classic Rock 102.9 MGK", .fm(102, 9))
            .ignoreFrequencyInTitle()
            .url(authority: "wmgk.com")
        
        Station("wrti", .fm(90, 1))
            .url(authority: "wrti.org")
        
        Station("wxpn", .fm(88, 5))
            .url(authority: "xpn.org")
        
    }
    
}
