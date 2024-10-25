//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeadThreadInfo: Codable, Equatable {
  public var autoResponse: Bool?
  public var clientAccount: String?
  public var conversationId: String?
  public var createdOn: Date?
  public var id: String?
  public var lead: LeadInfo?
  public var leadId: String?
  public var messageSource: EnumsMessageSource?
  public var modifiedOn: Date?
  public var threadId: String?
  public var toAccount: String?

  public init(autoResponse: Bool?  = nil, clientAccount: String?  = nil, conversationId: String?  = nil, createdOn: Date? = nil, id: String? = nil, lead: LeadInfo?  = nil, leadId: String? = nil, messageSource: EnumsMessageSource?  = nil, modifiedOn: Date? = nil, threadId: String?  = nil, toAccount: String?  = nil) {
    self.autoResponse = autoResponse
    self.clientAccount = clientAccount
    self.conversationId = conversationId
    self.createdOn = createdOn
    self.id = id
    self.lead = lead
    self.leadId = leadId
    self.messageSource = messageSource
    self.modifiedOn = modifiedOn
    self.threadId = threadId
    self.toAccount = toAccount
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeadThreadInfo else { return false }
    guard self.autoResponse == object.autoResponse else { return false }
    guard self.clientAccount == object.clientAccount else { return false }
    guard self.conversationId == object.conversationId else { return false }
    guard self.createdOn == object.createdOn else { return false }
    guard self.id == object.id else { return false }
    guard self.lead == object.lead else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.messageSource == object.messageSource else { return false }
    guard self.modifiedOn == object.modifiedOn else { return false }
    guard self.threadId == object.threadId else { return false }
    guard self.toAccount == object.toAccount else { return false }
    return true
  }

  public static func == (lhs: LeadThreadInfo, rhs: LeadThreadInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
