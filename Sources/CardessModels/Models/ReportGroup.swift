//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ReportGroup: Codable, Equatable {
  public var items: [ReportGroupItem]?
  public var name: String?

  public init(items: [ReportGroupItem]?  = nil, name: String?  = nil) {
    self.items = items
    self.name = name
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ReportGroup else { return false }
    guard self.items == object.items else { return false }
    guard self.name == object.name else { return false }
    return true
  }

  public static func == (lhs: ReportGroup, rhs: ReportGroup) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
