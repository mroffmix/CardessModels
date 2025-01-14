//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class UserInfo: Codable, Equatable {
  public var email: String?
  public var id: String?
  public var isActive: Bool?
  public var locale: String?
  public var locationId: String?
  public var login: String?
  public var name: String?
  public var password: String?
  public var phoneNo: String?
  public var position: String?
  public var profileImage: String?
  public var roles: [RoleInfo]?
  public var signature: String?
  public var state: EnumsUserState?
  public var type: EnumsUserType?

  public init(email: String?  = nil, id: String? = nil, isActive: Bool?  = nil, locale: String?  = nil, locationId: String?  = nil, login: String?  = nil, name: String?  = nil, password: String?  = nil, phoneNo: String?  = nil, position: String?  = nil, profileImage: String?  = nil, roles: [RoleInfo]?  = nil, signature: String?  = nil, state: EnumsUserState?  = nil, type: EnumsUserType?  = nil) {
    self.email = email
    self.id = id
    self.isActive = isActive
    self.locale = locale
    self.locationId = locationId
    self.login = login
    self.name = name
    self.password = password
    self.phoneNo = phoneNo
    self.position = position
    self.profileImage = profileImage
    self.roles = roles
    self.signature = signature
    self.state = state
    self.type = type
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? UserInfo else { return false }
    guard self.email == object.email else { return false }
    guard self.id == object.id else { return false }
    guard self.isActive == object.isActive else { return false }
    guard self.locale == object.locale else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.login == object.login else { return false }
    guard self.name == object.name else { return false }
    guard self.password == object.password else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.position == object.position else { return false }
    guard self.profileImage == object.profileImage else { return false }
    guard self.roles == object.roles else { return false }
    guard self.signature == object.signature else { return false }
    guard self.state == object.state else { return false }
    guard self.type == object.type else { return false }
    return true
  }

  public static func == (lhs: UserInfo, rhs: UserInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
