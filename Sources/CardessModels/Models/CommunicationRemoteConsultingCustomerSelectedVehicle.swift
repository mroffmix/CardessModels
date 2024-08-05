//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationRemoteConsultingCustomerSelectedVehicle: Codable, Equatable {
  public var container: String?
  public var ecode: String?
  public var equipments: [String]?
  public var fuel: String?
  public var fza: String?
  public var hst: String?
  public var ht: String?
  public var mileage: Int?
  public var registrationDate: Date?
  public var vin: String?

  public init(container: String?  = nil, ecode: String?  = nil, equipments: [String]?  = nil, fuel: String?  = nil, fza: String?  = nil, hst: String?  = nil, ht: String?  = nil, mileage: Int?  = nil, registrationDate: Date? = nil, vin: String?  = nil) {
    self.container = container
    self.ecode = ecode
    self.equipments = equipments
    self.fuel = fuel
    self.fza = fza
    self.hst = hst
    self.ht = ht
    self.mileage = mileage
    self.registrationDate = registrationDate
    self.vin = vin
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationRemoteConsultingCustomerSelectedVehicle else { return false }
    guard self.container == object.container else { return false }
    guard self.ecode == object.ecode else { return false }
    guard self.equipments == object.equipments else { return false }
    guard self.fuel == object.fuel else { return false }
    guard self.fza == object.fza else { return false }
    guard self.hst == object.hst else { return false }
    guard self.ht == object.ht else { return false }
    guard self.mileage == object.mileage else { return false }
    guard self.registrationDate == object.registrationDate else { return false }
    guard self.vin == object.vin else { return false }
    return true
  }

  public static func == (lhs: CommunicationRemoteConsultingCustomerSelectedVehicle, rhs: CommunicationRemoteConsultingCustomerSelectedVehicle) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
