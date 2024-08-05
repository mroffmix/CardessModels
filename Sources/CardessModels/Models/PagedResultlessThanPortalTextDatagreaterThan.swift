//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class PagedResultlessThanPortalTextDatagreaterThan: Codable, Equatable {
  public var items: [CustomerPortalPortalTextData]?
  public var nextPage: String?
  public var pageSize: Int?
  public var totalAmount: Int?
  public var totalPages: Int?

  public init(items: [CustomerPortalPortalTextData]?  = nil, nextPage: String?  = nil, pageSize: Int?  = nil, totalAmount: Int?  = nil, totalPages: Int?  = nil) {
    self.items = items
    self.nextPage = nextPage
    self.pageSize = pageSize
    self.totalAmount = totalAmount
    self.totalPages = totalPages
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? PagedResultlessThanPortalTextDatagreaterThan else { return false }
    guard self.items == object.items else { return false }
    guard self.nextPage == object.nextPage else { return false }
    guard self.pageSize == object.pageSize else { return false }
    guard self.totalAmount == object.totalAmount else { return false }
    guard self.totalPages == object.totalPages else { return false }
    return true
  }

  public static func == (lhs: PagedResultlessThanPortalTextDatagreaterThan, rhs: PagedResultlessThanPortalTextDatagreaterThan) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
