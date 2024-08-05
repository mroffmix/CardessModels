//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ImportTopDriveResponse: Codable, Equatable {
  public var data: String?
  public var failed: Bool?
  public var fileName: String?
  public var key: String?
  public var message: String?
  public var vehicleId: String?

  public init(data: String?  = nil, failed: Bool?  = nil, fileName: String?  = nil, key: String?  = nil, message: String?  = nil, vehicleId: String? = nil) {
    self.data = data
    self.failed = failed
    self.fileName = fileName
    self.key = key
    self.message = message
    self.vehicleId = vehicleId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ImportTopDriveResponse else { return false }
    guard self.data == object.data else { return false }
    guard self.failed == object.failed else { return false }
    guard self.fileName == object.fileName else { return false }
    guard self.key == object.key else { return false }
    guard self.message == object.message else { return false }
    guard self.vehicleId == object.vehicleId else { return false }
    return true
  }

  public static func == (lhs: ImportTopDriveResponse, rhs: ImportTopDriveResponse) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
