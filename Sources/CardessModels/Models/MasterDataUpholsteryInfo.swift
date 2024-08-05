//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class MasterDataUpholsteryInfo: Codable, Equatable {
  public var code: String?
  public var id: String?
  public var image: String?
  public var name: String?
  public var oemId: String?
  public var price: Double?
  public var type: String?

  public init(code: String?  = nil, id: String? = nil, image: String?  = nil, name: String?  = nil, oemId: String?  = nil, price: Double?  = nil, type: String?  = nil) {
    self.code = code
    self.id = id
    self.image = image
    self.name = name
    self.oemId = oemId
    self.price = price
    self.type = type
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? MasterDataUpholsteryInfo else { return false }
    guard self.code == object.code else { return false }
    guard self.id == object.id else { return false }
    guard self.image == object.image else { return false }
    guard self.name == object.name else { return false }
    guard self.oemId == object.oemId else { return false }
    guard self.price == object.price else { return false }
    guard self.type == object.type else { return false }
    return true
  }

  public static func == (lhs: MasterDataUpholsteryInfo, rhs: MasterDataUpholsteryInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}