//
//  Market.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

// soon to be replaced by a struct
public enum Market: String {
    // alabama
    case birmingham
    case troyAL
    
    // massachusetts
    case boston
    
    // pennsylvania
    case philadelphia
    
    // tennessee
    case chattanooga
    case collegedale
    case knoxville
    case triCitiesTN
    
    // virginia
    case lebanonVA
    
    // washington
    case seattle
    
}

extension Market: CustomStringConvertible {
    public var description: String {
        switch self {
        case .lebanonVA:
            return "Lebanon"
            
        case .triCitiesTN:
            return "Tri-Cities"
            
        case .troyAL:
            return "Troy"
            
        default:
            assert(rawValue.suffix(2).allSatisfy(\.isLowercase))
            return rawValue.capitalized
            
        }
    }
    
}
