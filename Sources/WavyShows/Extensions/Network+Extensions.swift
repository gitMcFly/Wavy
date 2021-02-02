//
//  Market+Extension.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import ShowGroup
import MixedGroup
@_exported import enum StationGroup.Network
import unstandard

// TODO: test implementation
fileprivate extension Network {
    var shows: some ShowGroup {
        Self.showsByNetwork[self] ?? AnyShowGroup()
    }
    
}


///:

fileprivate extension Network {
    static let showsByNetwork: [Network : AnyShowGroup] = {
        AnyShowGroup.universal[\.subgroups]
            .map { showGroup -> (Network, AnyShowGroup) in
                (type(of: showGroup).network, showGroup)
            }
            .wrap { Dictionary(uniqueKeysWithValues: $0) }
    }()
    
}
