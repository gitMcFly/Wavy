//
//  SetResult.swift
//  
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation

@resultBuilder
public struct SetResult {
    public static func buildBlock<E>() -> Set<E> {
        Set<E>()
    }
    
    public static func buildBlock<E>(_ subsets: Set<E>...) -> Set<E> {
        var combined = Set<E>()
        subsets.forEach { combined.formUnion($0) }
        return combined
    }
    
}

public extension SetResult {
    static func buildExpression<E>(_ subset: Set<E>) -> Set<E> {
        subset
    }
    
    static func buildExpression<E>(_ element: E) -> Set<E> {
        Set([element])
    }
    
}
