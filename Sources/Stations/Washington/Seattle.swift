//
//  Seattle.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

struct Seattle: _StationGroup {
    var stations: Set<Station> {
        Station("KUOW", .fm(94, 9))
            .url(authority: "kuow.org")
        
    }
    
}
