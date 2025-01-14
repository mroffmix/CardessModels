//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class UserTimeSlot: Codable, Equatable {
  public var end: Date?
  public var start: Date?
  public var user: UserInfo?

  public init(end: Date? = nil, start: Date? = nil, user: UserInfo?  = nil) {
    self.end = end
    self.start = start
    self.user = user
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? UserTimeSlot else { return false }
    guard self.end == object.end else { return false }
    guard self.start == object.start else { return false }
    guard self.user == object.user else { return false }
    return true
  }

  public static func == (lhs: UserTimeSlot, rhs: UserTimeSlot) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
