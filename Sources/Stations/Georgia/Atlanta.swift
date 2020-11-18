//
//  Atlanta.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

extension Georgia {
    struct Atlanta: _StationGroup {
        var stations: Set<Station> {
            
            // MARK: - FM Stations
            
            Station("wras", .fm(88, 5), "GPB")
                .frequencyDesignator(.hidden)
                .during(timeFrom: (19, 00), to: (5, 00), in: .atlanta) { wras in
                    wras
                        .title("Album 88")
                        .ignoreFrequencyInTitle()
                    
                }
                .url(authority: "wras.org")
            
            Station("wrfg", .fm(89, 3))
                .url(authority: "wrfg.org")
            
            Station("wabe", .fm(90, 1))
                .callLetters(.trailing)
                .url(authority: "wabe.org")
            
            Station("wrek", .fm(91, 1))
                .url(authority: "wrek.org")
            
            Station("wclk", .fm(91, 9))
                .url(authority: "wclk.com")
            
            Station("wzgc", .fm(92, 9), "The Game")
                .frequencyDesignator(.hidden)
                .url(authority: "929thegame.radio.com")
            
            Station("wubl", .fm(94, 9), "The Bull")
                .slogan("Today's Best Country")
                .url(authority: "949thebull.iheart.com")
            
            Station("wsb", .fm(95, 5))
                .slogan("Atlanta's News & Talk")
                .url(authority: "wsbradio.com")
            
            Station("wwpv", "Power", .fm(96, 1))
                .url(authority: "power961.iheart.com")
                .frequencyDesignator(.hidden)
            
            Station("WSB-FM", "B-", .fm(98, 5))
                .url(authority: "b985.com")
            
            Station("wwwq", "Q-", .fm(99, 1))
                .url(authority: "q997atlanta.com")
            
            Station("wvee", "V103", .fm(103, 3))
                .url(authority: "v103.radio.com")
                .ignoreFrequencyInTitle()
            
            Station("wifn", "ESPN Atlanta", .fm(103, 7))
                .ignoreBroadcastCityInTitle()
            
            
            // MARK: - AM Stations
            
            Station("wbin", "Atlanta's BIN", .am(640))
                .url(authority: "atlanta.binbews.com")
                .ignoreBroadcastCityInTitle()
                .frequencyDesignator(.hidden)
            
            Station("wqxi", "Atlanta Radio Korea", .am(790))
                .ignoreBroadcastCityInTitle()
                .url(authority: "atlantaradiokorea.com")
            
            Station("waec", "Love", .am(860))
                .url(authority: "love860.com")
            
            Station("wgka", .am(920), "The Answer")
                .slogan("News. Opinion. Insight.")
                .url(authority: "am920theanswer.com")
                .frequencyDesignator(.leading)
            
            Station("wniv", "Faith Talk", .am(970))
                .url(authority: "faithtalk970.com")
            
            Station("wtza", "Radio Punjab", .am(1010))
                //.url(authority: "wtza.net")
            
            Station("wafs", "Relevant Radio", .am(1190))
            
            Station("waok", "News & Talk", .am(1380))
                .url(authority: "waok.radio.com")
                .frequencyDesignator(.hidden)
                .callLetters(.trailing)
            
            Station("wyze", .am(1480))
                .slogan("A Voice Changing The World")
                .url(authority: "wyzeradio.com")
            
        }
        
    }
    
}
