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

public extension Market {
    var city: String {
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
    
    func withStateAbbreviation() -> (city: String, stateAbbreviation: String?) {
        (city, stateAbbreviation)
    }
    
    var stateAbbreviation: String? {
        switch self {
        case .atlanta:
            return "GA"
            
        case .birmingham, .huntsville:
            return "AL"
            
        case .boston:
            return "MA"
            
        case .chattanooga, .collegedale, .knoxville, .nashville:
            return "TN"
            
        case .philadelphia:
            return "PA"
            
        case .seattle:
            return "WA"
            
        case _ where rawValue.suffix(2).allSatisfy(\.isUppercase):
            return rawValue.suffix(2).asString()
            
        default:
            return nil
            
        }
    }
    
}
