//
//  Frequency.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation
import unstandard

public enum Frequency: Hashable {
    case fm(_ mhz: Int, _ dMHz: Int)
    case am(_ khz: Int)
    
}

extension Frequency: CustomStringConvertible {
    public var description: String {
        description(frequencyDesignatorPosition: .trailing)
    }
    
}
 
extension Frequency {    
    @SingleResult public func description(frequencyDesignatorPosition: DisplayPosition) -> String {
        switch frequencyDesignatorPosition {
        case .leading:
            "\(technologyDesignator) \(frequencyNumber)"
            
        case .trailing:
            "\(frequencyNumber) \(technologyDesignator)"
            
        case .hidden:
            frequencyNumber
            
        }
    }
    
}

extension Frequency {
    @SingleResult var technologyDesignator: String {
        switch self {
        case .fm: "FM"
        case .am: "AM"
        }
    }
    
    @SingleResult var frequencyNumber: String {
        switch self {
        case let .fm(mhz, dMHz):
            "\(mhz).\(dMHz)"
            
        case let .am(khz):
            "\(khz)"
            
        }
    }
    
}
