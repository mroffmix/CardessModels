//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationImportImportResponse: Codable, Equatable {
  public var code: String?
  public var message: String?
  public var messageId: String?
  public var status: CommunicationImportImportResponseStatus?

  public init(code: String?  = nil, message: String?  = nil, messageId: String?  = nil, status: CommunicationImportImportResponseStatus?  = nil) {
    self.code = code
    self.message = message
    self.messageId = messageId
    self.status = status
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationImportImportResponse else { return false }
    guard self.code == object.code else { return false }
    guard self.message == object.message else { return false }
    guard self.messageId == object.messageId else { return false }
    guard self.status == object.status else { return false }
    return true
  }

  public static func == (lhs: CommunicationImportImportResponse, rhs: CommunicationImportImportResponse) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
