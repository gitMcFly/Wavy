//
//  AnyShowGroup.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import ShowGroup

public extension AnyShowGroup {
    @AnyShowGroupBuilder static var universal: AnyShowGroup {
        // public radio
        NPR()
        PRX()
        
        //
        PremiereNetworks()
        
        //
        Independent()
        
    }
    
}

