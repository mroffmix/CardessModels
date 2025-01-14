//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ReportData: Codable, Equatable {
  public var amount: Int?
  public var url: String?

  public init(amount: Int?  = nil, url: String?  = nil) {
    self.amount = amount
    self.url = url
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ReportData else { return false }
    guard self.amount == object.amount else { return false }
    guard self.url == object.url else { return false }
    return true
  }

  public static func == (lhs: ReportData, rhs: ReportData) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
