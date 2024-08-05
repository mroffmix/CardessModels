//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ServicesDataDocmosis: Codable, Equatable {
  public var rate: Double?
  public var services: [ServiceDocmosis]?

  public init(rate: Double?  = nil, services: [ServiceDocmosis]?  = nil) {
    self.rate = rate
    self.services = services
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ServicesDataDocmosis else { return false }
    guard self.rate == object.rate else { return false }
    guard self.services == object.services else { return false }
    return true
  }

  public static func == (lhs: ServicesDataDocmosis, rhs: ServicesDataDocmosis) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}