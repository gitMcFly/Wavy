//
//  SiteReference.swift
//  
//
//  Created by Christopher Weems on 12/1/20.
//

import Foundation

public enum SiteReference {
    case authority(_ authority: String) // "github.com"
    case pageURL(_ pageURL: String)     // "https://github.com/DocMcGit/Wavy/"
    
}
