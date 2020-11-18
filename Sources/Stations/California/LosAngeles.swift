//
//  LosAngeles.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

import Foundation

extension California {
    struct LosAngeles: _StationGroup {
        var stations: Set<Station> {
            Station("knx", .am(1070), "Newsradio")
                .callLetterPosition(.leading)
                .frequencyDesignator(.hidden)
                .url(authority: "knx1070.radio.com")
                .owner(.entercom)
            
        }
        
    }
    
}
