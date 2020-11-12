//
//  Market.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation
import Statehood

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
    case memphis
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
        var state: State? {
            switch self {
            case .atlanta:
                return .georgia
                
            case .birmingham, .huntsville:
                return .alabama
                
            case .boston:
                return .massachusetts
                
            case .chattanooga, .knoxville, .memphis, .nashville:
                return .tennessee
                
            case .philadelphia:
                return .pennsylvania
                
            case .seattle:
                return .washington
                
            default:
                return nil
                
            }
        }
        
        if let state = state {
            return state.uspsAbbreviation
            
        } else if rawValue.suffix(2).allSatisfy(\.isUppercase) {
            return rawValue.suffix(2).asString()
            
        } else {
            return nil
            
        }
    }
    
}
