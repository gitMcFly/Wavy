//
//  Miami.swift
//  
//
//  Created by Christopher Weems on 11/15/20.
//

import Foundation

extension Florida {
    struct Miami: _StationGroup {
        var stations: Set<Station> {
            
            
            
            // am stations
            
            Station("wqam", .am(560), "The Joe")
                .frequencyDesignator(.hidden)
                .member(of: .espnRadio)
                .url(authority: "wqam.radio.com")
            
            Station("wiod","Newsradio", .am(610))
                .url(authority: "wiod.iheart.com")
                .member(of: .prn, .abcNews, .bloomberg, .accuweather)
                .owner(.iHeartMedia)
            
            Station("wwfe", "La Ponderosa", .am(670))
                .url(authority: "laponderosa.com")
            
            Station("waqi", "Radio Mambi", .am(710))
                .frequencyDesignator(.hidden)
                .slogan("Expertos en Análisis y Noticias")
                .url("https://www.univision.com/radio/miami-waqi-am")
            
            Station("waxy", .am(790), "The Ticket")
                .member(of: .cbsSportsRadio, .westwoodOne)
                .url(authority: "theticketmiami.radio.com")
                .owner(.entercom)
            
            Station("wacc", "Radio Paz", .am(830))
                .url(authority: "paxcc.org")
            
            Station("wzab", "Miami's BIN", .am(880))
                .frequencyDesignator(.hidden)
                .url(authority: "miami.binnews.com")
                .owner(.relevantRadio)
            
        }
        
    }

}
