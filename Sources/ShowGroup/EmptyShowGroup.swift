//
//  EmptyShowGroup.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

public struct EmptyShowGroup: ShowGroup {
    public var showGroupBody: some ShowGroup {
        return AnyShowGroup()
    }
    
    public init() { }
    
}
