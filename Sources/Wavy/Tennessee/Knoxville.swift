//
//  Knoxville.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import StationGroup
import unstandard

extension Tennessee {
    struct Knoxville: _StationGroup {
        var stations: Set<RadioStation> {
            Station("wylv", .fm(88, 3))
                .owner(.educationalMediaFoundation)
            
            Station("wdvx", .fm(89, 9)) // american roots
                .url(authority: "wdvx.com")
            
            Station("wutk", .fm(90, 3), "The Rock")
                .frequencyDesignator(.hidden)
                .slogan("UT's College of Rock")
                .url(authority: "wutkradio.com")
            
            Station("wuot", .fm(91, 9))
                .callLetters(.trailing)
                .url(authority: "wuot.org")
            
            Station("wetr", "Talk Radio", .fm(92, 3))
                .frequencyDesignator(.hidden)
                .slogan("Knoxville's Talk You Can Trust")
                .url(authority: "talkradio923.com")
            
            Station("wnox", .fm(93, 1))
                .frequencyDesignator(.hidden)
                .callLetters(.trailing)
                .url(authority: "931wnox.com")
                .owner(.summitMedia)
            
            Station("wkzx", "La Líder", .fm(93, 5))
                .slogan("Música en tu idioma")
                .url(authority: "laliderwkzx.com")
            
            Station("wnfz", .fm(94, 3), "Jack FM")
                .frequencyDesignator(.hidden)
                .url(authority: "jackfmknoxville.com")
            
            Station("wjmp", "Jump", .fm(97, 1))
                .frequencyDesignator(.hidden)
                .url(authority: "jump971.com")
            
            Station("wjxb-fm", "B-", .fm(97, 5))
                .slogan("Your Life, Your Music")
                .owner(.midwestCommunications)
                .url(authority: "b975.com")
            
            Station("woki", "NewsTalk", .fm(98, 7))
                .frequencyDesignator(.hidden)
                .url(authority: "newstalk987.com")
            
            Station("wnml", "Sports Radio WNML", .fm(99, 1))
                .frequencyDesignator(.leading)
                .callLetters(.hidden)
                .url(authority: "991thesportsanimal.com")
                .owner(.cumulusMedia)
            
            Station("wnrx", .fm(99, 3), "The Lake")
                .frequencyDesignator(.hidden)
                .url(authority: "wnrxradio.com")
            
            Station("wjbe", "Jammin'", .fm(99, 7))
                .frequencyDesignator(.hidden)
                .url(authority: "wjbe.org")
            
            Station("wcyq", .fm(100, 3), "The Wolf")
                .frequencyDesignator(.hidden)
                .slogan("Commercial Free New Country")
                .owner(.summitMedia)
                .url(authority: "knoxvillewolf.com")
            
            Station("wiam-lp", .fm(101, 1))
                .slogan("I Am The Way")
                .url(authority: "wiamradio.org")
            
            Station("wwst", "Star", .fm(102, 1))
                .url(authority: "star1021fm.com")
                .frequencyDesignator(.hidden)
                .owner(.summitMedia)
            
            Station("wimz", "Classic Rock", .fm(103, 5))
                .frequencyDesignator(.hidden)
                .url(authority: "wimz.com")
                .owner(.cumulusMedia)
            
            Station("wozo", .fm(103, 9))
                .url(authority: "wozoradio.com")
            
            Station("wkht", "Hot", .fm(104, 5))
                .frequencyDesignator(.hidden)
                .slogan("The Beat of Knoxville")
                .url(authority: "hot1045.net")
                .owner(.summitMedia)
            
            Station("wtnq", "Q-", .fm(104, 9))
                .frequencyDesignator(.hidden)
                .url(authority: "q1049.com")
                .owner(.loudMedia)
            
            Station("wkce", .fm(105, 1))
                .callLetters(.trailing)
                .slogan("mid century radio")
                .url(authority: "wkceradio.com")
                .owner(.loudMedia)
            
            Station("wvlz", .fm(106, 1))
                .slogan("Knoxville Rocks")
                .url(authority: "vlzrocks.com")
                .owner(.loudMedia)
            
            Station("wfiv-fm", .fm(105, 3))
                .frequencyDesignator(.hidden)
                .callLetters(.trailing)
                .slogan("Good Times. Great Oldies.")
                .url(authority: "wfiv.com")
            
            Station("wfgw", .fm(106, 7), "The Light")
                .frequencyDesignator(.hidden)
                .url(authority: "thelightfm.org")
            
            Station("wivk", .fm(107, 7))
                .frequencyDesignator(.leading)
                .url(authority: "wivk.com")
                .owner(.cumulusMedia)
            
        }
        
    }
    
}
