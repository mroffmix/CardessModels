//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeadEventInfo: Codable, Equatable {
  public var assignedTo: String?
  public var attachments: [String]?
  public var attempts: Int?
  public var content: String?
  public var event: String?
  public var eventTime: Date?
  public var message: CommunicationServiceMessage?
  public var page: String?
  public var status: EnumsDeliveryStatus?
  public var url: String?

  public init(assignedTo: String?  = nil, attachments: [String]?  = nil, attempts: Int?  = nil, content: String?  = nil, event: String?  = nil, eventTime: Date? = nil, message: CommunicationServiceMessage?  = nil, page: String?  = nil, status: EnumsDeliveryStatus?  = nil, url: String?  = nil) {
    self.assignedTo = assignedTo
    self.attachments = attachments
    self.attempts = attempts
    self.content = content
    self.event = event
    self.eventTime = eventTime
    self.message = message
    self.page = page
    self.status = status
    self.url = url
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeadEventInfo else { return false }
    guard self.assignedTo == object.assignedTo else { return false }
    guard self.attachments == object.attachments else { return false }
    guard self.attempts == object.attempts else { return false }
    guard self.content == object.content else { return false }
    guard self.event == object.event else { return false }
    guard self.eventTime == object.eventTime else { return false }
    guard self.message == object.message else { return false }
    guard self.page == object.page else { return false }
    guard self.status == object.status else { return false }
    guard self.url == object.url else { return false }
    return true
  }

  public static func == (lhs: LeadEventInfo, rhs: LeadEventInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}