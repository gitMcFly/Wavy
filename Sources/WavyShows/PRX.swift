//
//  PRX.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import ShowGroup

public struct PRX: ShowGroup {
    public static let network = Network.prx
    
    public var showGroupBody: some ShowGroup {
        "Afropop Worldwide"
            .url(authority: "afropop.org")
        
        "This American Life"
            .url(authority: "thisamericanlife.org")
        
        "Jazz After Hours"
            .url(authority: "jazzafterhours.net")
        
        "Latino USA"
            .url(authority: "latinousa.org")
        
        "Live Wire"
            .subtitle("with Luke Burbank")
            .url(authority: "livewireradio.org")
        
        "The Moth"
            .url(authority: "themoth.org")
        
        "Reveal"
            .url(authority: "revealnews.org")
        
        "Snap Judgement"
            .url(authority: "snapjudgment.org")
        
        "The World"
            .url(authority: "pri.org")
        
    }
    
}
