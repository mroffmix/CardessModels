//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelLeadAutoAssignSettings: Codable, Equatable {
  public var id: String?
  public var isSaturdayWorkingDay: Bool?
  public var isSundayWorkingDay: Bool?
  public var leadSource: CustomerDataEnumsLeadSourceExtention?
  public var users: [ModelUser]?

  public init(id: String? = nil, isSaturdayWorkingDay: Bool?  = nil, isSundayWorkingDay: Bool?  = nil, leadSource: CustomerDataEnumsLeadSourceExtention?  = nil, users: [ModelUser]?  = nil) {
    self.id = id
    self.isSaturdayWorkingDay = isSaturdayWorkingDay
    self.isSundayWorkingDay = isSundayWorkingDay
    self.leadSource = leadSource
    self.users = users
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelLeadAutoAssignSettings else { return false }
    guard self.id == object.id else { return false }
    guard self.isSaturdayWorkingDay == object.isSaturdayWorkingDay else { return false }
    guard self.isSundayWorkingDay == object.isSundayWorkingDay else { return false }
    guard self.leadSource == object.leadSource else { return false }
    guard self.users == object.users else { return false }
    return true
  }

  public static func == (lhs: ModelLeadAutoAssignSettings, rhs: ModelLeadAutoAssignSettings) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
