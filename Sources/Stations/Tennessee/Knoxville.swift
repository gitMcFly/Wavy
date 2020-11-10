//
//  Knoxville.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Wavy
import unstandard

extension Tennessee {
    struct Knoxville: _StationGroup {
        var stations: Set<RadioStation> {
            Station("wdvx", .fm(88, 3)) // american roots
                .url(authority: "wdvx.com")
            
            Station("wimz", .fm(103, 5))
                .url(authority: "wimz.com")
            
            Station("wivk", .fm(107, 7))
                .url(authority: "wivk.com")
            
            Station("wjbe", "Jammin'", .fm(99, 7))
                .url(authority: "wjbe.org")
            
            Station("wkht", "Hot", .fm(104, 5))
                .url(authority: "hot1045.net")
            
            Station("wnml", "Sports Radio", .fm(91, 1))
                .url(authority: "991thesportsanimal.com")
            
            Station("wozo", .fm(103, 9))
                .url(authority: "wozoradio.com")
            
            Station("wuot", .fm(91, 9))
                .url(authority: "wuot.org")
            
            Station("wutk", .fm(90, 3))
                .url(authority: "wutkradio.com")
            
        }
        
    }
    
}
