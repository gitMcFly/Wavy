//
//  Memphis.swift
//  
//
//  Created by Christopher Weems on 11/11/20.
//

extension Tennessee {
    struct Memphis: _StationGroup {
        var stations: Set<Station> {
            Station("wqox", .fm(88, 5))
                .url(authority: "voiceofscs.com", useHTTPS: false)
            
            Station("wypl", .fm(89, 3))
                .url("https://www.memphislibrary.org/wypl/")
            
            Station("wevl", .fm(89, 9))
                .url(authority: "wevl.org")
            
            Station("wkno", .fm(91, 1))
                .url(authority: "wkno.org")
            
            Station("wyxr", .fm(91, 7))
                .url(authority: "wyxr.org")
            
            Station("wrec", "Newstalk", .fm(92, 1))
                .url(authority: "600wrc.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wmfs-fm", "ESPN", .fm(92, 9))
                .frequencyDesignator(.hidden)
                .slogan("NPR For the Mid South")
                .url(authority: "espn929.com")
            
            Station("wkbq", "U.S. 51 Country", .fm(93, 5))
                .url(authority: "us51country.com")
            
            Station("wlfp", .fm(94, 1), "The Wolf")
                .frequencyDesignator(.hidden)
                .url(authority: "941thewolf.radio.com")
            
            Station("webl", "Classic Country", .fm(95, 3))
                .frequencyDesignator(.hidden)
                .broadcastCity("Coldwater", state: .mississippi)
                .url(authority: "mississippicountry.com")
            
            Station("whal", .fm(95, 7))
                .broadcastCity("Horn Lake", state: .mississippi)
                .url(authority: "hallelujahfm.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wivg", .fm(96, 1))
            Station("whrk", .fm(97, 1))
            Station("wxmx", .fm(91, 1))
            Station("wkim", .fm(98, 9))
            Station("wgue", .fm(99, 3))
            
            Station("wmc-fm", "FM 100", .fm(99, 7))
                .ignoreFrequencyInTitle()
                .url(authority: "fm100memphis.radio.com")
                .owner(.entercom)
            
            Station("kjms", .fm(101, 1))
            Station("kwnw", .fm(101, 9))
            Station("ktrq", .fm(102, 3))
            
            Station("wegr", "Rock 103", .fm(102, 7))
                .ignoreFrequencyInTitle()
                .slogan("Memphis' Classic Rock")
                .url(authority: "rock103.iheart.com")
                .owner(.iHeartMedia)
            
            Station("wrbo", .fm(103, 5))
                .callLettersFollowFrequency()
                .url(authority: "1035wrbo.com", useHTTPS: false)
                .owner(.cumulusMedia)
            
            
            Station("wrvr", .fm(104, 5), "The River")
                .frequencyDesignator(.hidden)
                .url(authority: "1045theriver.radio.com")
            
            Station("wlok", "FM 105 WLOK", .fm(104, 9))
                .ignoreFrequencyInTitle()
                .slogan("Still A Family Tradition")
                .url(authority: "wlok.com")
            
            Station("wgkx", "Kix 106", .fm(105, 9))
                .ignoreFrequencyInTitle()
                .slogan("Today's Best Country")
                .url(authority: "kix106.com")
                .owner(.cumulusMedia)
            
            Station("kxht", "Hot", .fm(107, 1))
                .frequencyDesignator(.hidden)
                .slogan("Tru Hip-Hop")
                .url(authority: "hot1071.com")
            
            Station("whbq-fm", .fm(107, 5))
            
            Station("wyxr", .fm(91, 7))
            Station("wrec", .fm(92, 1))
            
            Station("whbq", .am(560))
            Station("wmc", .am(790))
            Station("wgsf", .am(1030))
            
        }
    }
}
