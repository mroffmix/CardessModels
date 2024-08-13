//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class HooksWhatsappChatMessageInfo: Codable, Equatable {
  public var from: String?
  public var fullName: String?
  public var locationId: Int?
  public var messageText: String?
  public var source: EnumsMessageSource?
  public var to: String?

  public init(from: String?  = nil, fullName: String?  = nil, locationId: Int?  = nil, messageText: String?  = nil, source: EnumsMessageSource?  = nil, to: String?  = nil) {
    self.from = from
    self.fullName = fullName
    self.locationId = locationId
    self.messageText = messageText
    self.source = source
    self.to = to
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? HooksWhatsappChatMessageInfo else { return false }
    guard self.from == object.from else { return false }
    guard self.fullName == object.fullName else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.messageText == object.messageText else { return false }
    guard self.source == object.source else { return false }
    guard self.to == object.to else { return false }
    return true
  }

  public static func == (lhs: HooksWhatsappChatMessageInfo, rhs: HooksWhatsappChatMessageInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
