//
//  WallClockTimeRange.swift
//  
//
//  Created by Christopher Weems on 11/10/20.
//

import Foundation

public struct WallClockTimeRange {
    public typealias Time = (hour: Int, minute: Int)
    
    let calendar = Calendar.gregorian
    
    let start: Time
    let end: Time
    
    var endsWithinNextDay: Bool {
        end < start
    }
    
    func callAsFunction(includes date: Date, in timeZone: TimeZone) -> Bool {
        let startDateComponents = dateComponents(for: start,
                                                 matching: date, in: timeZone)
        
        let endDateComponents = dateComponents(for: offsetTimeEndingInNextDay,
                                               matching: date, in: timeZone)
        
        var startDate: Date! { startDateComponents.date }
        var endDate: Date! { endDateComponents.date }
        
        return startDate < .now() && .now() < endDate
    }
    
    // next time this range switches between active and not
    func nextJunction(from date: Date = .now(), in timeZone: TimeZone) -> Date {
        fatalError()
    }
    
}

fileprivate extension WallClockTimeRange {
    var offsetTimeEndingInNextDay: Time {
        guard endsWithinNextDay else { return end }
        return (end.hour + 24, end.minute)
    }
    
    func dateComponents(for time: Time, matching date: Date, in timeZone: TimeZone) -> DateComponents {
        var dateComponents = calendar.dateComponents(in: timeZone, from: date)
        
        dateComponents.hour = time.hour
        dateComponents.minute = time.minute
        
        return dateComponents
    }
    
}
