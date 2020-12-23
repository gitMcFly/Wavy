//
//  PremiereNetworks.swift
//  
//
//  Created by Christopher Weems on 12/22/20.
//

import ShowGroup

public struct PremiereNetworks: ShowGroup {
    public let network = Network.premiere
    
    public var showGroupBody: some ShowGroup {
        "The Rush Limbaugh Show"
            .url(authority: "rushlimbaugh.com")
        
        /*
        "Fox Gametime React"
            .with(host: "Andy Furman", "Lincoln Kennedy")
        */
        
    }
}
