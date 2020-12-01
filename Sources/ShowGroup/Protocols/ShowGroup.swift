//
//  ShowGroup.swift
//  
//
//  Created by Christopher Weems on 11/30/20.
//

public protocol ShowGroup {
    associatedtype Body: ShowGroup
    @AnyShowGroupBuilder var body: Body { get }
    
    init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup
    init<IndividualShow>(show: IndividualShow) where IndividualShow : Show
    
}

extension ShowGroup {
    public init<Subgroup>(subgroups: [Subgroup]) where Subgroup : ShowGroup {
        fatalError("Replace this with `AnyShowGroup` or implement in subclass")
    }
    
    public init<IndividualShow>(show: IndividualShow) where IndividualShow : Show {
        fatalError("Replace this with `AnyShowGroup` or implement in subclass")
    }
    
}
