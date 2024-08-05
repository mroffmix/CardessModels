//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelTestDriveLog: Codable, Equatable {
  public var endDateFact: Date?
  public var endDatePlanned: Date?
  public var endMileageFact: Int?
  public var endMileagePlanned: Int?
  public var id: String?
  public var licensePlate: String?
  public var startDate: Date?
  public var startMileage: Int?
  public var vehicleId: String?

  public init(endDateFact: Date? = nil, endDatePlanned: Date? = nil, endMileageFact: Int?  = nil, endMileagePlanned: Int?  = nil, id: String? = nil, licensePlate: String?  = nil, startDate: Date? = nil, startMileage: Int?  = nil, vehicleId: String? = nil) {
    self.endDateFact = endDateFact
    self.endDatePlanned = endDatePlanned
    self.endMileageFact = endMileageFact
    self.endMileagePlanned = endMileagePlanned
    self.id = id
    self.licensePlate = licensePlate
    self.startDate = startDate
    self.startMileage = startMileage
    self.vehicleId = vehicleId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelTestDriveLog else { return false }
    guard self.endDateFact == object.endDateFact else { return false }
    guard self.endDatePlanned == object.endDatePlanned else { return false }
    guard self.endMileageFact == object.endMileageFact else { return false }
    guard self.endMileagePlanned == object.endMileagePlanned else { return false }
    guard self.id == object.id else { return false }
    guard self.licensePlate == object.licensePlate else { return false }
    guard self.startDate == object.startDate else { return false }
    guard self.startMileage == object.startMileage else { return false }
    guard self.vehicleId == object.vehicleId else { return false }
    return true
  }

  public static func == (lhs: ModelTestDriveLog, rhs: ModelTestDriveLog) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
