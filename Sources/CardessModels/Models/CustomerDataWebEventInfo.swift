//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CustomerDataWebEventInfo: Codable, Equatable {
  public var content: String?
  public var event: String?
  public var eventTime: Date?
  public var page: String?
  public var url: String?

  public init(content: String?  = nil, event: String?  = nil, eventTime: Date? = nil, page: String?  = nil, url: String?  = nil) {
    self.content = content
    self.event = event
    self.eventTime = eventTime
    self.page = page
    self.url = url
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CustomerDataWebEventInfo else { return false }
    guard self.content == object.content else { return false }
    guard self.event == object.event else { return false }
    guard self.eventTime == object.eventTime else { return false }
    guard self.page == object.page else { return false }
    guard self.url == object.url else { return false }
    return true
  }

  public static func == (lhs: CustomerDataWebEventInfo, rhs: CustomerDataWebEventInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
