//
//  PRX.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import ShowGroup

struct PRX: ShowGroup {
    let network = Network.prx
    
    var showGroupBody: some ShowGroup {
        "A Way With Words"
            .url(authority: "waywordradio.org")
        
    }
    
}
