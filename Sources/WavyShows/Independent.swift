//
//  Independent.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import ShowGroup

struct Independent: ShowGroup {
    var showGroupBody: some ShowGroup {
        "A Way With Words"
            .url(authority: "waywordradio.org")
        
        "Marketplace"
            .url("https://www.marketplace.org/shows/marketplace/")
        
    }
    
}
