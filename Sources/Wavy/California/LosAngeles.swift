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
            
            // fm stations
            
            Station("krdc", "Radio Disney Country", .fm(99, 1))
            
            Station("kali-fm", "Radio VNCR", .fm(106, 3))
                .url("https://nguoiviet.tv/vncr/")
            
            Station("ksse", "Radio José", .fm(107, 1))
                //.broadcastCity("Arcadia")
                .url(authority: "joseradio.com")
            
            Station("klve", .fm(107, 5), "K-LOVE")
                .slogan("Vive Tu Música")
                .url("https://www.univision.com/los-angeles/klve/")
                .owner(.univision)
            
            Station("kwve-fm", "K-Wave", .fm(107, 9))
                .slogan("The Wave of Living Water")
                .url(authority: "kwve.com")
            
            
            // am stations
            
            Station("knx", .am(1070), "Newsradio")
                .callLetters(.leading)
                .frequencyDesignator(.hidden)
                .slogan("All News, All the Time. Depend on Us.")
                .member(of: .cbsNewsRadio, .bloomberg, .theWeatherChannel)
                .url(authority: "knx1070.radio.com")
                .owner(.entercom)
            
        }
        
    }
    
}
