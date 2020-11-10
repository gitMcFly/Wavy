//
//  Boston.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

extension Massachusetts {
    struct Boston: _StationGroup {
        var stations: Set<Station> {
            Station("wbur", .fm(90, 9))
                .url(authority: "wbur.org")
            
            Station("wgbh", .fm(89, 7)) // public
                .url(authority: "wgbh.org")
            
        }
        
    }

}
