//
//  RadioStation.swift
//
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation
import unstandard

public struct RadioStation: Hashable {
    internal struct Properties: Hashable {
        var ignoreFrequencyInTitle = false
        var ignoreMarketInTitle = false
        
    }
    
    internal var properties = Properties()
    
    public let callLetters: String
    
    var title: Title
    var slogan: String? = nil
    
    public private(set) var webURL: WebURL?
    
    let frequency: Frequency
    
    public internal(set) var market: Market?
    var cityName: String? = nil
    
    
    // MARK: - Initializers
    
    public init(_ callLetters: String, _ titlePrefix: String, _ frequency: Frequency, market: Market? = nil) {
        self.callLetters = callLetters.uppercased()
        self.title = .prefix(titlePrefix)
        self.frequency = frequency
        self.market = market
        
    }
    
    public init(_ callLetters: String, _ frequency: Frequency, _ titleSuffix: String, market: Market? = nil) {
        self.callLetters = callLetters.uppercased()
        self.title = .suffix(titleSuffix)
        self.frequency = frequency
        self.market = market
        
    }
    
    public init(_ callLetters: String, _ frequency: Frequency, market: Market? = nil) {
        self.callLetters = callLetters.uppercased()
        self.title = .callLetters
        self.frequency = frequency
        self.market = market
        
    }
    
}


// MARK: - Property Setters

public extension RadioStation {
    func market(_ market: Market) -> Self {
        var new = self
        new.market = market
        return new
    }
    
    func broadcastCity(_ cityName: String) -> Self {
        var new = self
        new.cityName = cityName
        return new
    }
    
    func temporaryTitle(_ title: String, through endDate: (day: Int, month: Int, year: Int)) -> Self {
        var new = self
        
        let endDateComponents = DateComponents(calendar: .gregorian,
                                               year: endDate.year,
                                               month: endDate.month,
                                               day: endDate.day)
        
        if let date = endDateComponents.date, .now() < date {
            new.title = new.title.replacingText(with: title)
            
        } else {
            assertionFailure("Temporary title no longer valid: \(title)")
            
        }
        
        return new
    }
    
    func slogan(_ slogan: String) -> Self {
        var new = self
        new.slogan = slogan
        return new
    }
    
    func url(authority: String, useHTTPS: Bool = true) -> Self {
        var new = self
        new.webURL = .authority(authority, useHTTPS: useHTTPS)
        return new
    }
    
    func url(_ webPage: String) -> Self {
        var new = self
        new.webURL = .page(webPage)
        return new
    }
    
    func ignoreBroadcastCityInTitle() -> Self {
        var new = self
        new.properties.ignoreMarketInTitle = true
        return new
    }
    
    func ignoreFrequencyInTitle() -> Self {
        var new = self
        new.properties.ignoreFrequencyInTitle = true
        return new
    }
    
}


//

extension RadioStation {
    @SingleResult public var formattedTitle: String {
        switch title {
        case _ where properties.ignoreFrequencyInTitle:
            title.text ?? callLetters
            
        case .callLetters:
            "\(callLetters) \(frequency)"
            
        case .prefix(let title):
            if let joinedPrefix = title.droppingSuffix("-") {
                joinedPrefix + frequency.description
                
            } else {
                "\(title) \(frequency)"
                
            }
            
        case .suffix(let title):
            "\(frequency) \(title)"
            
        }
    }
    
    public func formattedTitle(includeMarket: Bool) -> String {
        guard includeMarket && !properties.ignoreMarketInTitle else { return formattedTitle }
        guard let marketSuffix = market?.description.wrap({ ", \($0)" }) else { return formattedTitle }
        
        return formattedTitle + marketSuffix
    }
    
}


// MARK -

public extension RadioStation {
    enum Title: Hashable {
        case prefix(_ title: String) // ex. "Star 102.1"
        case suffix(_ title: String) // ex. "105.5 The River"
        case callLetters
        
    }
        
}

extension RadioStation {
    public enum WebURL: Hashable {
        case authority(_ authority: String, useHTTPS: Bool) // ex. "kuow.org"
        case page(_ webPage: String)        // ex. "https://www.etsu.edu/wets/"
        
    }
    
}

extension RadioStation.Title {
    func replacingText(with newText: String) -> Self {
        switch self {
        case .callLetters:
            fatalError()
            
        case .prefix:
            return .prefix(newText)
            
        case .suffix:
            return .suffix(newText)
            
        }
    }
    
    fileprivate var text: String? {
        switch self {
        case .callLetters:
            return nil
        
        case let .prefix(text):
            return text
        
        case let .suffix(text):
            return text
        
        }
    }
    
}
