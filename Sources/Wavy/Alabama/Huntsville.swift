//
//  Huntsville.swift
//  
//
//  Created by Christopher Weems on 11/11/20.
//

extension Alabama {
    struct Huntsville: _StationGroup {
        var stations: Set<Station> {
            Station("wayh", .fm(88, 1))
                .member(of: .wayFM)
            
            Station("wlrh", .fm(89, 3))
                .member(of: .apm, .prx, .npr)
                .url(authority: "wlrh.org")
            
            Station("wjou", "Praise", .fm(90, 1))
                .url(authority: "wjou.org")
            
            Station("wjab", .fm(90, 9))
                .url(authority: "wjab.org")
            
            Station("wfyd", .fm(91, 7))
                .owner(.bibleBroadcastingNetwork)
            
            Station("weuz", .fm(92, 1))
                .url(authority: "103weup.com")
            
        }
    }
}
