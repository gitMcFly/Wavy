//
//  RadioStation.swift
//
//
//  Created by Christopher Weems on 11/9/20.
//

import Foundation
import Statehood
import unstandard

public struct RadioStation: Hashable {
    public struct Properties: Hashable {
        var title: Title
        public var frequency: Frequency?
        
        public var callLetters: String
        
        var slogan: String?
        
        var market: RadioMarket?
        
        var ignoreFrequencyInTitle = false
        var ignoreMarketInTitle = false
        
        var callLetterPosition: DisplayPosition?
        var displayCallLetters: String?
        
        var frequencyDesignatorPosition = DisplayPosition.trailing
        
        var broadcastCity: String? = nil
        var broadcastState: State? = nil
        
        var networkAffiliations = Set<Network>()
        var owners = Set<Broadcaster>()
        
        public var webURL: WebURL?
        
    }
    
    internal var properties: Properties
    
    
    ///: Initializers
    
    public init(_ callLetters: String, _ titlePrefix: String, _ frequency: Frequency? = nil, market: RadioMarket? = nil) {
        self.properties = Properties(title: .prefix(titlePrefix), callLetters: callLetters.uppercased())
        self.properties.frequency = frequency
        self.properties.market = market
        
    }
    
    public init(_ callLetters: String, _ frequency: Frequency, _ titleSuffix: String, market: RadioMarket? = nil) {
        self.properties = Properties(title: .suffix(titleSuffix), callLetters: callLetters.uppercased())
        self.properties.frequency = frequency
        self.properties.market = market
        
    }
    
    public init(_ callLetters: String, _ frequency: Frequency? = nil, market: RadioMarket? = nil) {
        self.properties = Properties(title: .callLetters, callLetters: callLetters.uppercased())
        self.properties.frequency = frequency
        self.properties.market = market
        
    }
    
}

extension RadioStation {
    public subscript<V>(propertyKeyPath: KeyPath<Properties, V>) -> V {
        properties[keyPath: propertyKeyPath]
    }
    
    internal subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        get { properties[keyPath: propertyKeyPath] }
        set { properties[keyPath: propertyKeyPath] = newValue }
    }
    
}


///: Deprecated Property Accessors

@available(*, deprecated)
public extension RadioStation {
    var callLetters: String { properties.callLetters }
    var slogan: String? { properties.slogan }
    var networkAffiliations: Set<Network> { properties.networkAffiliations }
    var owners: Set<Broadcaster> { properties.owners }
    var webURL: WebURL? { properties.webURL }
    var frequency: Frequency? { properties.frequency }
    var market: RadioMarket? { properties.market }
    
}


///: Property Setters

public extension RadioStation {
    func title(_ title: String) -> Self {
        var new = self
        new[\.title] = new[\.title].replacingText(with: title)
        return new
    }
    
    func slogan(_ slogan: String) -> Self {
        var new = self
        new[\.slogan] = slogan
        return new
    }
    
    func broadcastCity(_ cityName: String, state: State? = nil) -> Self {
        var new = self
        new.properties.broadcastCity = cityName
        new.properties.broadcastState = state
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
    
    func callLetters(_ position: DisplayPosition) -> Self {
        var new = self
        new.properties.callLetterPosition = position
        return new
    }
    
    func displayCallLetters(_ displayCallLetters: String) -> Self {
        var new = self
        new.properties.displayCallLetters = displayCallLetters.uppercased()
        return new
    }
        
    func frequencyDesignator(_ position: DisplayPosition) -> Self {
        var new = self
        new.properties.frequencyDesignatorPosition = position
        return new
    }
    
    func market(_ market: RadioMarket) -> Self {
        var new = self
        new[\.market] = market
        return new
    }
    
    func url(authority: String, useHTTPS: Bool = true) -> Self {
        var new = self
        new[\.webURL] = .authority(authority, useHTTPS: useHTTPS)
        return new
    }
    
    func url(_ webPage: String) -> Self {
        var new = self
        new[\.webURL] = .page(webPage)
        return new
    }
    
}

public extension RadioStation {
    func temporaryTitle(_ title: String, through endDate: (day: Int, month: Int, year: Int)) -> Self {
        var new = self
        
        let endDateComponents = DateComponents(calendar: .gregorian,
                                               year: endDate.year,
                                               month: endDate.month,
                                               day: endDate.day + 1)
        
        if let date = endDateComponents.date, .now() < date {
            new.properties.title = new.properties.title.replacingText(with: title)
            
        } else {
            assertionFailure("Temporary title no longer valid: \(title)")
            
        }
        
        return new
    }
    
    typealias WallClockTime = WallClockTimeRange.Time
    
    func during(timeFrom start: WallClockTime, to end: WallClockTime,
                in timeZone: TimeZone, modifier: (Self) -> Self) -> Self {
        let timeRange = WallClockTimeRange(start: start, end: end)
        
        if timeRange(includes: .now(), in: timeZone) {
            return modifier(self)
            
        } else {
            return self
            
        }
    }
    
}


public extension RadioStation {
    func member(of networks: Network...) -> Self {
        var new = self
        new[\.networkAffiliations].formUnion(networks)
        return new
    }
    
    func owner(_ owners: Broadcaster...) -> Self {
        var new = self
        new[\.owners].formUnion(owners)
        return new
    }
    
}


//

@available(*, deprecated)
extension RadioStation {
    public var formattedTitle: String {
        properties.formattedTitle
    }
    
    public func formattedTitle(includeMarket: Bool) -> String {
        properties.formattedTitle(includeMarket: includeMarket)
    }
    
}

public extension RadioStation.Properties {
    var formattedTitle: String {
        let frequency = self.frequency?
            .description(frequencyDesignatorPosition: frequencyDesignatorPosition)
        
        let callLetters = displayCallLetters ?? self.callLetters
        
        switch title {
        case _ where ignoreFrequencyInTitle:
            return title.text ?? callLetters
            
        case .callLetters where callLetterPosition == .trailing:
            return [frequency, callLetters]
                .compactMap { $0 }
                .joined(separator: " ")
            
        case .callLetters:
            return [callLetters, frequency]
                .compactMap { $0 }
                .joined(separator: " ")
            
        case .prefix(let title):
            if let joinedPrefix = title.droppingSuffix("-") {
                return joinedPrefix + (frequency ?? "")
                
            } else if callLetterPosition == .trailing {
                return [title, frequency, callLetters]
                    .compactMap { $0 }
                    .joined(separator: " ")
                
            } else {
                return [title, frequency]
                    .compactMap { $0 }
                    .joined(separator: " ")
                
            }
            
        case .suffix(let title) where callLetterPosition == .leading:
            return [callLetters, frequency, title]
                .compactMap { $0 }
                .joined(separator: " ")
            
        case .suffix(let title) where callLetterPosition == .trailing:
            return [frequency, title, callLetters]
                .compactMap { $0 }
                .joined(separator: " ")
            
        case .suffix(let title):
            return [frequency, title]
                .compactMap { $0 }
                .joined(separator: " ")
            
        }
    }
    
    func formattedTitle(includeMarket: Bool) -> String {
        guard includeMarket && !ignoreMarketInTitle else { return formattedTitle }
        let broadcastCity = self.broadcastCity ?? market?.city
        guard let marketSuffix = broadcastCity?.wrap({ ", \($0)" }) else { return formattedTitle }
        
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


///:

public extension RadioStation.Properties {
    var subtitle: String? {
        guard !ignoreMarketInTitle else { return nil }
        guard let city = broadcastCity ?? market?.city else { return nil }
        guard let state = broadcastState?.uspsAbbreviation ?? market?.state.uspsAbbreviation else {
            return nil
        }
        
        return Array {
            [city, state]
                .compactMap { $0 }
                .joined(separator: ", ")
            
            if !includesFrequencyInTitle {
                frequency?.description
                
            }
            
        }
        .compactMap { $0 }
        .joined(separator: " | ")
    }
    
    var sortFrequency: String? {
        switch frequency {
        case let .fm(mhz, dMHz):
            return "F-\(mhz).\(dMHz)"
            
        case let .am(khz):
            return "Z-\(khz)"
            
        case .none:
            return nil
            
        }
    }
    
    var sortIdentifier: String {
        Array {
            market?.state.uspsAbbreviation ?? broadcastState?.uspsAbbreviation
            market?.city ?? broadcastCity
            sortFrequency
            callLetters
            
        }
        .compactMap { $0 }
        .joined(separator: "-")
    }
    
    var includesFrequencyInTitle: Bool {
        !ignoreFrequencyInTitle
    }
    
}
