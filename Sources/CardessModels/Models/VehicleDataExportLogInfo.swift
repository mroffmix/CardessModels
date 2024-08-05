//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleDataExportLogInfo: Codable, Equatable {
  public var errors: [VehicleDataExportErrorInfo]?
  public var exportAmount: Int?
  public var exportChannel: MasterDataEnumsExportChannel?
  public var finishedAt: Date?
  public var id: String?
  public var total: Int?

  public init(errors: [VehicleDataExportErrorInfo]?  = nil, exportAmount: Int?  = nil, exportChannel: MasterDataEnumsExportChannel?  = nil, finishedAt: Date? = nil, id: String? = nil, total: Int?  = nil) {
    self.errors = errors
    self.exportAmount = exportAmount
    self.exportChannel = exportChannel
    self.finishedAt = finishedAt
    self.id = id
    self.total = total
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleDataExportLogInfo else { return false }
    guard self.errors == object.errors else { return false }
    guard self.exportAmount == object.exportAmount else { return false }
    guard self.exportChannel == object.exportChannel else { return false }
    guard self.finishedAt == object.finishedAt else { return false }
    guard self.id == object.id else { return false }
    guard self.total == object.total else { return false }
    return true
  }

  public static func == (lhs: VehicleDataExportLogInfo, rhs: VehicleDataExportLogInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}