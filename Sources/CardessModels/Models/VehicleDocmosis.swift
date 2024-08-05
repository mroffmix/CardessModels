//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleDocmosis: Codable, Equatable {
  public var deliveryCost: Double?
  public var vehicle: VehicleDataVehicleInfo?
  public var vehicleQrCodeUrl: String?

  public init(deliveryCost: Double?  = nil, vehicle: VehicleDataVehicleInfo?  = nil, vehicleQrCodeUrl: String?  = nil) {
    self.deliveryCost = deliveryCost
    self.vehicle = vehicle
    self.vehicleQrCodeUrl = vehicleQrCodeUrl
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleDocmosis else { return false }
    guard self.deliveryCost == object.deliveryCost else { return false }
    guard self.vehicle == object.vehicle else { return false }
    guard self.vehicleQrCodeUrl == object.vehicleQrCodeUrl else { return false }
    return true
  }

  public static func == (lhs: VehicleDocmosis, rhs: VehicleDocmosis) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}