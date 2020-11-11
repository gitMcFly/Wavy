//
//  Nashville.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

extension Tennessee {
    struct Nashville: _StationGroup {
        var stations: Set<Station> {
            Station("wrsn", .fm(88, 1))
            
            Station("wfsk", "Jazzy 88", .fm(88, 1))
                .url(authority: "wfskfm.org")
                .slogan("Nashville's Jazz Station")
                .ignoreFrequencyInTitle()
            
            Station("wayq", .fm(88, 3))
                .member(of: .wayFM)
            
            Station("wbia", .fm(88, 3))
                .member(of: .americanFamilyRadio)
            
            Station("wmts", .fm(88, 3))
//                .url(authority: "wmts.org")
            
            Station("wvcp", .fm(88, 5))
                .broadcastCity("Gallatin")
                .slogan("Volunteer State College FM")
                .url("https://www.volstate.edu/wvcp")
            
            Station("waym", .fm(88, 7))
                .member(of: .wayFM)
            
            Station("wecv", .fm(89, 1))
                .member(of: .bottRadio)
            
            Station("wmot", "Roots Radio", .fm(89, 5))
                .slogan("Middle Tennessee Public Radio")
                .url(authority: "wmot.org")
            
            Station("wpln", .fm(90, 3), "WPLN News")
                .slogan("Nashville Public Radio")
                .frequencyDesignator(.hidden)
            
            Station("wfcl", .fm(91, 1)) // format change soon
            
            Station("wfmq", .fm(91, 5))
                .member(of: .bottRadio)
            
            Station("wfcm", .fm(91, 7))
                .member(of: .moodyRadio)
            
            Station("wapx-fm", "Magic", .fm(91, 9)) // clarksville
                .url("https://www.apsu.edu/communication/media.php")
            
            Station("wqqk", "92Q", .fm(92, 1))
                .slogan("The Best Mix of R&B")
                .owner(.cumulusMedia)
                .ignoreFrequencyInTitle()
            
            Station("wjxa", "Mix", .fm(92, 9))
                .url(authority: "mix929.com")
            
            Station("wffi", .fm(93, 7))
            
            Station("wffh", .fm(94, 1))
            
            Station("wjjm", .fm(94, 3))
            
            Station("whpy", .fm(94, 5))
            
            Station("wsm", .fm(95, 5))
            
            Station("wcjk", .fm(96, 3))
            
            Station("wlvu", .fm(97, 1))
            
            Station("wsix", .fm(97, 9))
            
            Station("wrfn-lp", .fm(98, 9))
            
            Station("want", .fm(98, 9))
                .frequencyDesignator(.leading)
            
            Station("wwtn", "Super Talk", .fm(99, 7))
                .frequencyDesignator(.hidden)
                .callLettersFollowFrequency()
                .displayCallLetters("wtn")
                .url(authority: "997wtn.com")
            
            Station("wrlt", "Lightning 100", .fm(100, 1))
                .ignoreFrequencyInTitle()
                .url(authority: "lightning100.com")
            
            Station("wbou-lp", .fm(100, 5))
            
            Station("wubt", .fm(101, 1), "The Beat")
                .frequencyDesignator(.hidden)
                .url(authority: "1011thebeat.iheart.com")
            
            Station("wxna-lp", .fm(101, 5))
            
            Station("wjle", .fm(101, 7))
                .broadcastCity("Smithville")
                .slogan("Your Local News Leader")
                .url(authority: "wjle.com")
            
            Station("wkom", .fm(101, 7))
                .url("https://www.wkomwkrm.com/wkom")
            
            Station("wlct", "WLCT Country", .fm(102, 1))
                .url(authority: "wlct.com")
            
            Station("wprt", .fm(102, 5), "The Game")
                .frequencyDesignator(.hidden)
                .url(authority: "thegamenashville.com")
            
            Station("wbuz", .fm(102, 9), "Buzz")
                .frequencyDesignator(.hidden)
                .slogan("Nashville's Rock Station")
                .url(authority: "1029thebuzz.com")
            
            Station("wkdf", .fm(103, 3), "Country")
                .frequencyDesignator(.hidden)
                .url(authority: "1033country.com")
            
            Station("wiaf-lp", .fm(103, 9))
            
            Station("whqv-lp", .fm(103, 9))
            
            Station("wdyo-lp", .fm(104, 1))
            
            Station("wucz", .fm(104, 1), "The Ranch")
                .frequencyDesignator(.hidden)
                .url(authority: "1041theranch.com")
            
            Station("wgfx", .fm(104, 5), "The Zone")
                .frequencyDesignator(.hidden)
                .url(authority: "1045thezone.com")
            
            Station("wboz", .fm(104, 9))
            
            Station("wvwb", "The Wolf", .fm(105, 1))
                .frequencyDesignator(.hidden)
                .url(authority: "1051thewolf.fm")
            
            Station("wnrq", .fm(105, 9), "The Rock")
                .frequencyDesignator(.hidden)
                .url(authority: "1059therock.iheart.com")
            
            Station("wnfn", "Hot", .fm(106, 7))
                .frequencyDesignator(.hidden)
                .url(authority: "hot1067.com")
            
            Station("wrvw", .fm(107, 5), "The River")
                .frequencyDesignator(.hidden)
                .url(authority: "1075theriver.iheart.com")
            
        }
    }
    
}
