//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleSettingsInfo: Codable, Equatable {
  public var appraiserAmountNetto: Double?
  public var benzinFuelPrice: Double?
  public var co2priceMax: Double?
  public var co2priceMid: Double?
  public var co2priceMin: Double?
  public var deliveryMarginAmountNetto: Double?
  public var dieselFuelPrice: Double?
  public var gasFuelPrice: Double?
  public var highMileage: Int?
  public var id: String?
  public var mailDeliveryMarginAmountNetto: Double?
  public var mailDeliveryWithoutMarginAmountNetto: Double?
  public var mobileCustomerId: String?
  public var onlineProcesses: [VehicleOnlineProcessSettingsInfo]?
  public var parameterLessKmPercent: Double?
  public var parameterMoreKmPercent: Double?
  public var refinancingRatePercent: Double?
  public var signoutAmountNetto: Double?
  public var stromFuelPrice: Double?
  public var varioResidualValueSurchargePercent: Double?
  public var vat: Double?
  public var wasserstofFuelPrice: Double?

  public init(appraiserAmountNetto: Double?  = nil, benzinFuelPrice: Double?  = nil, co2priceMax: Double?  = nil, co2priceMid: Double?  = nil, co2priceMin: Double?  = nil, deliveryMarginAmountNetto: Double?  = nil, dieselFuelPrice: Double?  = nil, gasFuelPrice: Double?  = nil, highMileage: Int?  = nil, id: String? = nil, mailDeliveryMarginAmountNetto: Double?  = nil, mailDeliveryWithoutMarginAmountNetto: Double?  = nil, mobileCustomerId: String?  = nil, onlineProcesses: [VehicleOnlineProcessSettingsInfo]?  = nil, parameterLessKmPercent: Double?  = nil, parameterMoreKmPercent: Double?  = nil, refinancingRatePercent: Double?  = nil, signoutAmountNetto: Double?  = nil, stromFuelPrice: Double?  = nil, varioResidualValueSurchargePercent: Double?  = nil, vat: Double?  = nil, wasserstofFuelPrice: Double?  = nil) {
    self.appraiserAmountNetto = appraiserAmountNetto
    self.benzinFuelPrice = benzinFuelPrice
    self.co2priceMax = co2priceMax
    self.co2priceMid = co2priceMid
    self.co2priceMin = co2priceMin
    self.deliveryMarginAmountNetto = deliveryMarginAmountNetto
    self.dieselFuelPrice = dieselFuelPrice
    self.gasFuelPrice = gasFuelPrice
    self.highMileage = highMileage
    self.id = id
    self.mailDeliveryMarginAmountNetto = mailDeliveryMarginAmountNetto
    self.mailDeliveryWithoutMarginAmountNetto = mailDeliveryWithoutMarginAmountNetto
    self.mobileCustomerId = mobileCustomerId
    self.onlineProcesses = onlineProcesses
    self.parameterLessKmPercent = parameterLessKmPercent
    self.parameterMoreKmPercent = parameterMoreKmPercent
    self.refinancingRatePercent = refinancingRatePercent
    self.signoutAmountNetto = signoutAmountNetto
    self.stromFuelPrice = stromFuelPrice
    self.varioResidualValueSurchargePercent = varioResidualValueSurchargePercent
    self.vat = vat
    self.wasserstofFuelPrice = wasserstofFuelPrice
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleSettingsInfo else { return false }
    guard self.appraiserAmountNetto == object.appraiserAmountNetto else { return false }
    guard self.benzinFuelPrice == object.benzinFuelPrice else { return false }
    guard self.co2priceMax == object.co2priceMax else { return false }
    guard self.co2priceMid == object.co2priceMid else { return false }
    guard self.co2priceMin == object.co2priceMin else { return false }
    guard self.deliveryMarginAmountNetto == object.deliveryMarginAmountNetto else { return false }
    guard self.dieselFuelPrice == object.dieselFuelPrice else { return false }
    guard self.gasFuelPrice == object.gasFuelPrice else { return false }
    guard self.highMileage == object.highMileage else { return false }
    guard self.id == object.id else { return false }
    guard self.mailDeliveryMarginAmountNetto == object.mailDeliveryMarginAmountNetto else { return false }
    guard self.mailDeliveryWithoutMarginAmountNetto == object.mailDeliveryWithoutMarginAmountNetto else { return false }
    guard self.mobileCustomerId == object.mobileCustomerId else { return false }
    guard self.onlineProcesses == object.onlineProcesses else { return false }
    guard self.parameterLessKmPercent == object.parameterLessKmPercent else { return false }
    guard self.parameterMoreKmPercent == object.parameterMoreKmPercent else { return false }
    guard self.refinancingRatePercent == object.refinancingRatePercent else { return false }
    guard self.signoutAmountNetto == object.signoutAmountNetto else { return false }
    guard self.stromFuelPrice == object.stromFuelPrice else { return false }
    guard self.varioResidualValueSurchargePercent == object.varioResidualValueSurchargePercent else { return false }
    guard self.vat == object.vat else { return false }
    guard self.wasserstofFuelPrice == object.wasserstofFuelPrice else { return false }
    return true
  }

  public static func == (lhs: VehicleSettingsInfo, rhs: VehicleSettingsInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
