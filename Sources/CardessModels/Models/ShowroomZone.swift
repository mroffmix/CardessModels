//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ShowroomZone: Codable, Equatable {
  public var deviceIp: String?
  public var image: String?
  public var name: String?
  public var tags: [MasterDataTagInfo]?

  public init(deviceIp: String?  = nil, image: String?  = nil, name: String?  = nil, tags: [MasterDataTagInfo]?  = nil) {
    self.deviceIp = deviceIp
    self.image = image
    self.name = name
    self.tags = tags
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ShowroomZone else { return false }
    guard self.deviceIp == object.deviceIp else { return false }
    guard self.image == object.image else { return false }
    guard self.name == object.name else { return false }
    guard self.tags == object.tags else { return false }
    return true
  }

  public static func == (lhs: ShowroomZone, rhs: ShowroomZone) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
