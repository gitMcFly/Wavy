//
//  Network.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

import Foundation

public enum Network: Hashable {
    
    // music
    case nashFM
    
    // news
    case abcNews
    case apm // american public media
    case americanUrbanRadio
    case associatedPress
    case blackInformation
    case bloomberg
    case cbsNewsRadio
    case foxNews
    case npr
    case prn // premier networks
    case prx // public radio exchange
    case westwoodOne
    
    // weather
    case accuweather
    case theWeatherChannel
    
    // religious
    case americanFamilyRadio
    case bottRadio
    case moodyRadio
    case wayFM
    
    // sports
    case cbsSportsRadio
    case espnRadio
    case foxSports
    
    case unknown
    
}


extension Network: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = .unknown
    }
    
}
