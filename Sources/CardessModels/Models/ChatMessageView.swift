//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ChatMessageView: Codable, Equatable {
  public var createdOn: Date?
  public var id: String?
  public var leadId: String?
  public var message: String?
  public var messageSource: EnumsMessageSource?
  public var messageType: EnumsMessageType?
  public var modifiedOn: Date?
  public var sender: UserInfo?
  public var senderId: String?
  public var threadId: String?

  public init(createdOn: Date? = nil, id: String? = nil, leadId: String? = nil, message: String?  = nil, messageSource: EnumsMessageSource?  = nil, messageType: EnumsMessageType?  = nil, modifiedOn: Date? = nil, sender: UserInfo?  = nil, senderId: String? = nil, threadId: String?  = nil) {
    self.createdOn = createdOn
    self.id = id
    self.leadId = leadId
    self.message = message
    self.messageSource = messageSource
    self.messageType = messageType
    self.modifiedOn = modifiedOn
    self.sender = sender
    self.senderId = senderId
    self.threadId = threadId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ChatMessageView else { return false }
    guard self.createdOn == object.createdOn else { return false }
    guard self.id == object.id else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.message == object.message else { return false }
    guard self.messageSource == object.messageSource else { return false }
    guard self.messageType == object.messageType else { return false }
    guard self.modifiedOn == object.modifiedOn else { return false }
    guard self.sender == object.sender else { return false }
    guard self.senderId == object.senderId else { return false }
    guard self.threadId == object.threadId else { return false }
    return true
  }

  public static func == (lhs: ChatMessageView, rhs: ChatMessageView) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
