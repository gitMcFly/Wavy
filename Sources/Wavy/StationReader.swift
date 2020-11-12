//
//  StationReader.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

import unstandard

public struct StationReader {
    let station: RadioStation
    
    public init(_ station: RadioStation) {
        self.station = station
        
    }
    
}

public extension StationReader {
    var title: String {
        station.formattedTitle
    }
    
    var subtitle: String? {
        guard !station.properties.ignoreMarketInTitle else { return nil }
        guard let city = station.properties.broadcastCity ?? station.market?.city else {
            return nil
        }
        guard let state = station.properties.broadcastState?.uspsAbbreviation ?? station.market?.stateAbbreviation else {
            return nil
        }
        
        return Array {
            [city, state]
                .compactMap { $0 }
                .joined(separator: ", ")
            
            if !includesFrequencyInTitle {
                station.frequency?.description
                
            }
            
        }
        .compactMap { $0 }
        .joined(separator: " | ")
    }
    
}

public extension StationReader {
    var sortFrequency: String? {
        switch station.frequency {
        case let .fm(mhz, dMHz):
            return "F-\(mhz).\(dMHz)"
            
        case let .am(khz):
            return "Z-\(khz)"
            
        case .none:
            return nil
            
        }
    }
    
    var sortIdentifier: String {
        Array {
            station.market?.stateAbbreviation ?? station.properties.broadcastState?.uspsAbbreviation
            station.market?.city ?? station.properties.broadcastCity
            sortFrequency
            station.callLetters
            
        }
        .compactMap { $0 }
        .joined(separator: "-")
    }
    
    var includesFrequencyInTitle: Bool {
        !station.properties.ignoreFrequencyInTitle
    }
    
}
