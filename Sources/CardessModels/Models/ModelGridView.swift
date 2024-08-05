//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelGridView: Codable, Equatable {
  public var filterDump: String?
  public var gridId: String?
  public var id: String?
  public var name: String?
  public var pageSize: Int?
  public var sortAscending: Bool?
  public var sortField: String?
  public var user: ModelUser?
  public var userId: String?

  public init(filterDump: String?  = nil, gridId: String?  = nil, id: String? = nil, name: String?  = nil, pageSize: Int?  = nil, sortAscending: Bool?  = nil, sortField: String?  = nil, user: ModelUser?  = nil, userId: String? = nil) {
    self.filterDump = filterDump
    self.gridId = gridId
    self.id = id
    self.name = name
    self.pageSize = pageSize
    self.sortAscending = sortAscending
    self.sortField = sortField
    self.user = user
    self.userId = userId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelGridView else { return false }
    guard self.filterDump == object.filterDump else { return false }
    guard self.gridId == object.gridId else { return false }
    guard self.id == object.id else { return false }
    guard self.name == object.name else { return false }
    guard self.pageSize == object.pageSize else { return false }
    guard self.sortAscending == object.sortAscending else { return false }
    guard self.sortField == object.sortField else { return false }
    guard self.user == object.user else { return false }
    guard self.userId == object.userId else { return false }
    return true
  }

  public static func == (lhs: ModelGridView, rhs: ModelGridView) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
