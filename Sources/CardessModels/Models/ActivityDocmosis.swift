//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ActivityDocmosis: Codable, Equatable {
  public var activity: ActivityInfo?
  public var lead: LeadInfo?
  public var location: LocationDocmosis?
  public var salesPerson: SalesPersonDocmosis?
  public var signature: String?
  public var vehicle: VehicleDataVehicleInfo?
  public var vehicleImages: [ImageDocmosis]?

  public init(activity: ActivityInfo?  = nil, lead: LeadInfo?  = nil, location: LocationDocmosis?  = nil, salesPerson: SalesPersonDocmosis?  = nil, signature: String?  = nil, vehicle: VehicleDataVehicleInfo?  = nil, vehicleImages: [ImageDocmosis]?  = nil) {
    self.activity = activity
    self.lead = lead
    self.location = location
    self.salesPerson = salesPerson
    self.signature = signature
    self.vehicle = vehicle
    self.vehicleImages = vehicleImages
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ActivityDocmosis else { return false }
    guard self.activity == object.activity else { return false }
    guard self.lead == object.lead else { return false }
    guard self.location == object.location else { return false }
    guard self.salesPerson == object.salesPerson else { return false }
    guard self.signature == object.signature else { return false }
    guard self.vehicle == object.vehicle else { return false }
    guard self.vehicleImages == object.vehicleImages else { return false }
    return true
  }

  public static func == (lhs: ActivityDocmosis, rhs: ActivityDocmosis) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}