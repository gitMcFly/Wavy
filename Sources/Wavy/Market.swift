//
//  Market.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Algorithms
import Foundation
import Statehood

public enum Market: String, Hashable, CaseIterable {
    // alabama
    case birmingham
    case huntsville
    case troyAL
    
    // california
    case losAngeles
    
    // florida
    case miami
    
    // georgia
    case atlanta
    
    // idaho
    case boise
    
    // massachusetts
    case boston
    
    // new york
    case newYork
    
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
        var components = rawValue.chunked { $0.isUppercase || $1.isLowercase }
        
        if components.last?.allSatisfy(\.isUppercase) == true {
            components.removeLast()
            
        }
        
        let joiner = self.isHyphenatedName ? "-" : " "
        
        return components.map(\.capitalized).joined(separator: joiner)
    }
    
    var state: State {
        switch self {
        case .birmingham, .huntsville, .troyAL:
            return .alabama
            
        case .miami:
            return .florida
            
        case .atlanta:
            return .georgia
            
        case .boise:
            return .idaho
            
        case .boston:
            return .massachusetts
            
        case .philadelphia:
            return .pennsylvania
            
        case .chattanooga, .knoxville, .memphis, .nashville, .triCitiesTN:
            return .tennessee
            
        case .losAngeles:
            return .california
            
        case .newYork:
            return .newYork
            
        case .seattle:
            return .washington
            
        case .lebanonVA:
            return .virginia
            
        }
    }
    
}

fileprivate extension Market {
    var isHyphenatedName: Bool {
        [.triCitiesTN].contains(self)
    }
    
}
