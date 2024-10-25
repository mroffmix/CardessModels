//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class HooksFacebookFacebookPageMappingInfo: Codable, Equatable {
  public var countryCode: String?
  public var id: String?
  public var locationId: Int?
  public var pageId: String?

  public init(countryCode: String?  = nil, id: String? = nil, locationId: Int?  = nil, pageId: String?  = nil) {
    self.countryCode = countryCode
    self.id = id
    self.locationId = locationId
    self.pageId = pageId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? HooksFacebookFacebookPageMappingInfo else { return false }
    guard self.countryCode == object.countryCode else { return false }
    guard self.id == object.id else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.pageId == object.pageId else { return false }
    return true
  }

  public static func == (lhs: HooksFacebookFacebookPageMappingInfo, rhs: HooksFacebookFacebookPageMappingInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
