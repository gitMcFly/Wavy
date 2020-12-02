//
//  Network.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

import Algorithms
import Foundation
import unstandard

public enum Network: CaseIterable, Hashable {
    
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
    
    // unknown
    case unknown
    
}

public extension Network {
    func formattedTitle(_ locale: Locale = .current) -> String {
        "\(self)".fromCamelCase
    }
    
}

extension Network: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self = .unknown
    }
    
}

extension Network: Iffable, Wrappable { }

fileprivate extension String {
    var allSameCase: Bool {
        allSatisfy(\.isLowercase) || allSatisfy(\.isUppercase)
    }
    
    var fromCamelCase: String {
        guard !allSameCase else { return self.uppercased() }
        
        return self.chunked { $0.isUppercase || $1.isLowercase || ($0.isNumber && $1.isNumber) }
            .map { $0.allSatisfy(\.isUppercase) ? String($0) : $0.capitalized }
            .joined(separator: " ")
    }
    
}
