//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelLeadSourceTimeframeSettings: Codable, Equatable {
  public var id: String?
  public var leadSource: CustomerDataEnumsLeadSource?
  public var maxTimeframeHours: Int?
  public var users: [ModelUser]?

  public init(id: String? = nil, leadSource: CustomerDataEnumsLeadSource?  = nil, maxTimeframeHours: Int?  = nil, users: [ModelUser]?  = nil) {
    self.id = id
    self.leadSource = leadSource
    self.maxTimeframeHours = maxTimeframeHours
    self.users = users
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelLeadSourceTimeframeSettings else { return false }
    guard self.id == object.id else { return false }
    guard self.leadSource == object.leadSource else { return false }
    guard self.maxTimeframeHours == object.maxTimeframeHours else { return false }
    guard self.users == object.users else { return false }
    return true
  }

  public static func == (lhs: ModelLeadSourceTimeframeSettings, rhs: ModelLeadSourceTimeframeSettings) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
