//
//  AnnArbor.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import Foundation

extension Michigan {
    struct AnnArbor: _StationGroup {
        var stations: Set<Station> {
            Station("WCBN-FM", .fm(88, 3))
                .url(authority: "wcbn.org")
            
        }
        
    }
    
}
