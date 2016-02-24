//
//  Types.swift
//  Datum
//
//  Created by Tom Lokhorst on 2015-06-05.
//  Copyright (c) 2015 nonstrict. All rights reserved.
//

import Foundation

public typealias OffsetInSeconds = Int

public struct AbsoluteDateTime {
  internal let nsdate: NSDate
}

public struct RelativeDateTime {
  internal let nsdate: NSDate
}

public struct RelativeDate {
  internal let nsdate: NSDate
}

public struct ZonedDateTime {
  internal let absoluteDateTime: AbsoluteDateTime
  internal let timeZone: NSTimeZone
}

public struct ZonedDate {
  internal let absoluteDateTime: AbsoluteDateTime
  internal let timeZone: NSTimeZone
}

public struct OffsetDateTime {
  internal let absoluteDateTime: AbsoluteDateTime
  internal let utcOffset: OffsetInSeconds
}

public struct OffsetDate {
  internal let absoluteDateTime: AbsoluteDateTime
  internal let utcOffset: OffsetInSeconds
}

public enum HammerTime {
  /* Can't touch this */
}
