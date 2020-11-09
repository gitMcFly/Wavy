//
//  Frequency.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation
import unstandard

public enum Frequency {
    case fm(_ mhz: Int, _ dMHz: Int)
    case am(_ khz: Int)
    
}

extension Frequency: CustomStringConvertible {
    @SingleResult public var description: String {
        switch self {
        case .am(let khz):
            "\(khz) AM"
            
        case let .fm(mhz, dmhz):
            "\(mhz).\(dmhz) FM"
            
        }
    }
    
}
