//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelCallRedirectSettings: Codable, Equatable {
  public var callToReception: Bool?
  public var id: String?
  public var leadSource: CustomerDataEnumsLeadSource?
  public var phoneNo: String?
  public var preventFallback: Bool?
  public var users: [ModelUser]?

  public init(callToReception: Bool?  = nil, id: String? = nil, leadSource: CustomerDataEnumsLeadSource?  = nil, phoneNo: String?  = nil, preventFallback: Bool?  = nil, users: [ModelUser]?  = nil) {
    self.callToReception = callToReception
    self.id = id
    self.leadSource = leadSource
    self.phoneNo = phoneNo
    self.preventFallback = preventFallback
    self.users = users
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelCallRedirectSettings else { return false }
    guard self.callToReception == object.callToReception else { return false }
    guard self.id == object.id else { return false }
    guard self.leadSource == object.leadSource else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.preventFallback == object.preventFallback else { return false }
    guard self.users == object.users else { return false }
    return true
  }

  public static func == (lhs: ModelCallRedirectSettings, rhs: ModelCallRedirectSettings) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
