//
//  ShowGroupBuilder.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

import Foundation

@_functionBuilder
public struct ShowGroupBuilder<Group> where Group : ShowGroup {
    public static func buildBlock<Subgroup: ShowGroup>(_ subgroups: Subgroup...) -> Group {
        .init(subgroups: subgroups)
    }
    
}

public extension ShowGroupBuilder where Group == AnyShowGroup {
    static func buildBlock() -> Group {
        .init()
    }
    
}

public extension ShowGroupBuilder {
    static func buildExpression<IndividualShow>(_ show: IndividualShow) -> Group where IndividualShow : Show {
        Group(show: show)
    }
    
    static func buildExpression<Subgroup>(_ subgroup: Subgroup) -> Group where Subgroup : ShowGroup, Subgroup.Body == Group {
        subgroup.body
    }
    
}

public extension ShowGroupBuilder {
    static func buildExpression(_ stringValue: String) -> Group {
        Group(show: AnyShow(stringLiteral: stringValue))
    }
    
}
