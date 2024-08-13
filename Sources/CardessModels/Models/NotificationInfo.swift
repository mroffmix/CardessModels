//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class NotificationInfo: Codable, Equatable {
  public var assignedTo: UserInfo?
  public var assignedToId: String?
  public var createdOn: Date?
  public var id: String?
  public var lead: LeadInfo?
  public var leadId: String?
  public var message: String?
  public var modifiedOn: Date?
  public var type: EnumsNotificationType?
  public var unread: Bool?

  public init(assignedTo: UserInfo?  = nil, assignedToId: String? = nil, createdOn: Date? = nil, id: String? = nil, lead: LeadInfo?  = nil, leadId: String? = nil, message: String?  = nil, modifiedOn: Date? = nil, type: EnumsNotificationType?  = nil, unread: Bool?  = nil) {
    self.assignedTo = assignedTo
    self.assignedToId = assignedToId
    self.createdOn = createdOn
    self.id = id
    self.lead = lead
    self.leadId = leadId
    self.message = message
    self.modifiedOn = modifiedOn
    self.type = type
    self.unread = unread
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? NotificationInfo else { return false }
    guard self.assignedTo == object.assignedTo else { return false }
    guard self.assignedToId == object.assignedToId else { return false }
    guard self.createdOn == object.createdOn else { return false }
    guard self.id == object.id else { return false }
    guard self.lead == object.lead else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.message == object.message else { return false }
    guard self.modifiedOn == object.modifiedOn else { return false }
    guard self.type == object.type else { return false }
    guard self.unread == object.unread else { return false }
    return true
  }

  public static func == (lhs: NotificationInfo, rhs: NotificationInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
