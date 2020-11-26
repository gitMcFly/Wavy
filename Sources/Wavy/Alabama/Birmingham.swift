//
//  Birmingham.swift
//  
//
//  Created by Christopher Weems on 11/11/20.
//

import StationGroup

extension Alabama {
    struct Birmingham: _StationGroup {
        var stations: Set<Station> {
            Station("wbhm", .fm(90, 3))
                .url(authority: "wbhm.org")
            
            Station("wajh", "AJHOF", .fm(91, 1))
                .url(authority: "jazzhall.com")
            
            Station("wmjj", "Magic", .fm(96, 5))
                .frequencyDesignator(.hidden)
                .url(authority: "magic96.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wpya", .fm(97, 3), "Play")
                .frequencyDesignator(.hidden)
                .slogan("Best Mix of 2K and Today")
                .url(authority: "play973.com")
                .owner(.summitMedia)
                        
            Station("waye", "La Jefa", .fm(98, 3))
                .slogan("Mas Fuerte Que Nunca!")
                .url(authority: "aquimandalajefa.com")
            
            Station("wbhk", .fm(98, 7), "Kiss FM")
                .frequencyDesignator(.hidden)
                .url(authority: "987kiss.com")
                .owner(.summitMedia)
            
            Station("wzrr", "Talk", .fm(99, 5))
                .frequencyDesignator(.hidden)
                .url(authority: "talk995.com")
                .owner(.cumulusMedia)
            
            Station("wdxb", .fm(102, 5), "The Bull")
                .frequencyDesignator(.hidden)
                .url(authority: "1025thebull.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wqen", .fm(103, 7), "The Q")
                .broadcastCity("Trussville")
                .frequencyDesignator(.hidden)
                .url(authority: "1037theq.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wxjc-fm", "WXJC Radio", .fm(101, 1))
                .frequencyDesignator(.leading)
                .url(authority: "wxjcradio.com")
            
            Station("wuht", "Hot", .fm(107, 7))
                .frequencyDesignator(.hidden)
                .url(authority: "hot1077radio.com")
                .owner(.cumulusMedia)
            
        }
    }
    
}
