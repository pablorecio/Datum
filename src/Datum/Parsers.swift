//
//  Parsers.swift
//  Datum
//
//  Created by Tom Lokhorst on 2015-06-05.
//  Copyright (c) 2015 nonstrict. All rights reserved.
//

import Foundation


extension RelativeDateTime {
  public static func parse(string: String) -> RelativeDateTime? {
    guard let date = DateFormatters.relativeDateTime.dateFromString(string) else {
      return nil
    }

    return RelativeDateTime(nsdate: date)
  }
}

extension OffsetDateTime {
  public static func parse(string: String) -> OffsetDateTime? {
    guard let date = DateFormatters.offsetDateTime.dateFromString(string) else {
      return nil
    }

    let start = string.startIndex.advancedBy(19)
    let end = start.advancedBy(6)
    let abbr = string.substringWithRange(Range(start: start, end: end))
    let timeZone = NSTimeZone(abbreviation: "UTC\(abbr)")!

    return OffsetDateTime(nsdate: date, utcOffset: NSTimeInterval(timeZone.secondsFromGMT))
  }
}
