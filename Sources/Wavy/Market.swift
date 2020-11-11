//
//  Market.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

public enum Market: String, Hashable, CaseIterable {
    // alabama
    case birmingham
    case huntsville
    case troyAL
    
    // georgia
    case atlanta
    
    // massachusetts
    case boston
    
    // pennsylvania
    case philadelphia
    
    // tennessee
    case chattanooga
    case collegedale
    case knoxville
    case nashville
    case triCitiesTN
    
    // virginia
    case lebanonVA
    
    // washington
    case seattle
    
}


extension Market: CustomStringConvertible {
    public var description: String {
        let descriptionTitle: Substring
        
        switch self {
        case .triCitiesTN:
            return "Tri-Cities"
            
        case _ where rawValue.suffix(2).allSatisfy(\.isUppercase):
            descriptionTitle = rawValue.prefix(upTo: rawValue.index(rawValue.endIndex, offsetBy: -2))
            
        default:
            descriptionTitle = Substring(rawValue)
            
        }
        
        return descriptionTitle.capitalized
    }
    
}
