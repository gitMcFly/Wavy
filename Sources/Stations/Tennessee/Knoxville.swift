//
//  Knoxville.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Wavy
import unstandard

extension Tennessee {
    struct Knoxville: _StationGroup {
        var stations: Set<RadioStation> {
            Station("wdvx", .fm(88, 3)) // american roots
                .url(authority: "wdvx.com")
            
            Station("wutk", .fm(90, 3))
                .url(authority: "wutkradio.com")
            
            Station("wnml", "Sports Radio", .fm(91, 1))
                .url(authority: "991thesportsanimal.com")
            
            Station("wuot", .fm(91, 9))
                .url(authority: "wuot.org")
            
            Station("wnox", .fm(93, 1))
                .frequencyDesignator(.hidden)
                .callLettersFollowFrequency()
                .url(authority: "931wnox.com")
                .owner(.summitMedia)
            
            Station("wjbe", "Jammin'", .fm(99, 7))
                .url(authority: "wjbe.org")
            
            Station("wcyq", .fm(100, 3), "The Wolf")
                .frequencyDesignator(.hidden)
                .slogan("Commercial Free New Country")
                .owner(.summitMedia)
                .url(authority: "knoxvillewolf.com")
            
            Station("wwst", "Star", .fm(102, 1))
                .url(authority: "star1021fm.com")
                .frequencyDesignator(.hidden)
                .owner(.summitMedia)
            
            Station("wimz", "Classic Rock", .fm(103, 5))
                .frequencyDesignator(.hidden)
                .url(authority: "wimz.com")
                .owner(.cumulusMedia)
            
            Station("wkht", "Hot", .fm(104, 5))
                .frequencyDesignator(.hidden)
                .slogan("The Beat of Knoxville")
                .url(authority: "hot1045.net")
                .owner(.summitMedia)
            
            Station("wozo", .fm(103, 9))
                .url(authority: "wozoradio.com")
            
            Station("wivk", .fm(107, 7))
                .frequencyDesignator(.leading)
                .url(authority: "wivk.com")
                .owner(.cumulusMedia)
            
        }
        
    }
    
}
