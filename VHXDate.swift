// Tự học Swift 4.0 - xuanvinhtd

import Foundation

extension Date {
    // Have a time stamp formatter to avoid keep creating new ones. This improves performance
    static let weekdayAndDateStampDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: LCLanguage.getLanguage())
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.dateFormat = "EEEE, MMM dd yyyy" // "Monday, Mar 7 2016"
        return dateFormatter
    }()
    
    private static let hourMinuteSecondStampDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.dateFormat = "h:mm a" // "1:00 PM"
        return dateFormatter
    }()
    
    func toHourMinutesSecondString() -> String {
        return Date.hourMinuteSecondStampDateFormatter.string(from: self)
    }
    
    func toWeekDayAndDateString() -> String {
        return Date.weekdayAndDateStampDateFormatter.string(from: self)
    }
  
  func setLocaleWeekdayAndDateStampDateFormatter(locale: Locale) {
    Date.weekdayAndDateStampDateFormatter.locale = locale
  }
}
