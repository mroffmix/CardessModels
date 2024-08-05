//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class MasterDataCityInfo: Codable, Equatable {
  public var countryId: String?
  public var id: String?
  public var name: String?

  public init(countryId: String? = nil, id: String? = nil, name: String?  = nil) {
    self.countryId = countryId
    self.id = id
    self.name = name
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? MasterDataCityInfo else { return false }
    guard self.countryId == object.countryId else { return false }
    guard self.id == object.id else { return false }
    guard self.name == object.name else { return false }
    return true
  }

  public static func == (lhs: MasterDataCityInfo, rhs: MasterDataCityInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
