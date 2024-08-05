//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelLeadVehicleAccessory: Codable, Equatable {
  public var accessory: ModelAccessory?
  public var accessoryId: String?
  public var id: String?
  public var leadVehicle: ModelLeadVehicle?
  public var leadVehicleId: String?
  public var priceBrutto: Double?

  public init(accessory: ModelAccessory?  = nil, accessoryId: String? = nil, id: String? = nil, leadVehicle: ModelLeadVehicle?  = nil, leadVehicleId: String? = nil, priceBrutto: Double?  = nil) {
    self.accessory = accessory
    self.accessoryId = accessoryId
    self.id = id
    self.leadVehicle = leadVehicle
    self.leadVehicleId = leadVehicleId
    self.priceBrutto = priceBrutto
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelLeadVehicleAccessory else { return false }
    guard self.accessory == object.accessory else { return false }
    guard self.accessoryId == object.accessoryId else { return false }
    guard self.id == object.id else { return false }
    guard self.leadVehicle == object.leadVehicle else { return false }
    guard self.leadVehicleId == object.leadVehicleId else { return false }
    guard self.priceBrutto == object.priceBrutto else { return false }
    return true
  }

  public static func == (lhs: ModelLeadVehicleAccessory, rhs: ModelLeadVehicleAccessory) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
