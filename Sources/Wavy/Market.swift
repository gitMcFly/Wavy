//
//  Market.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

public struct Market: Hashable {
    fileprivate let id: String
    
    init(id: String) {
        self.id = id
    }
    
}

extension Market {
    // alabama
    public static let birmingham = Market(id: "birmingham")
    public static let huntsville = Market(id: "huntsville")
    public static let troyAL = Market(id: "troyAL")
    
    // massachusetts
    public static let boston = Market(id: "boston")
    
    // pennsylvania
    public static let philadelphia = Market(id: "philadelphia")
    
    // tennessee
    public static let chattanooga = Market(id: "chattanooga")
    public static let collegedale = Market(id: "collegedale")
    public static let knoxville = Market(id: "knoxville")
    public static let triCitiesTN = Market(id: "triCitiesTN")
    
    // virginia
    public static let lebanonVA = Market(id: "lebanonVA")
    
    // washington
    public static let seattle = Market(id: "seattle")
    
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
            return id.capitalized
            
        }
    }
    
}
