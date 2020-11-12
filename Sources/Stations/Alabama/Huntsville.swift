//
//  Huntsville.swift
//  
//
//  Created by Christopher Weems on 11/11/20.
//

extension Alabama {
    struct Huntsville: _StationGroup {
        var stations: Set<Station> {
            Station("wjab", .fm(90, 9))
                .url(authority: "wjab.org")
            
            Station("wlrh", .fm(89, 3))
                .url(authority: "wlrh.org")
            
        }
    }
}
