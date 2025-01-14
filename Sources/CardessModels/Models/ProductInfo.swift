//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ProductInfo: Codable, Equatable {
  public var id: String?
  public var name: String?
  public var points: Int?
  public var price: Double?

  public init(id: String? = nil, name: String?  = nil, points: Int?  = nil, price: Double?  = nil) {
    self.id = id
    self.name = name
    self.points = points
    self.price = price
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ProductInfo else { return false }
    guard self.id == object.id else { return false }
    guard self.name == object.name else { return false }
    guard self.points == object.points else { return false }
    guard self.price == object.price else { return false }
    return true
  }

  public static func == (lhs: ProductInfo, rhs: ProductInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
