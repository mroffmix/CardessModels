//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleDataLeasingMileagePricesInfo: Codable, Equatable {
  public var additionalServicesMehrMinderKmFLBrutto: Double?
  public var additionalServicesMehrMinderKmFLNetto: Double?
  public var additionalServicesMehrMinderKmFSBrutto: Double?
  public var additionalServicesMehrMinderKmFSNetto: Double?
  public var additionalServicesMonthlyRateBrutto: Double?
  public var additionalServicesMonthlyRateNetto: Double?
  public var effectiveAnnualInterestRate: Double?
  public var interestRate: Double?
  public var leasingFactor: Double?
  public var monthlyDeliveryAmountBrutto: Double?
  public var monthlyDeliveryAmountNetto: Double?
  public var monthlyExternalSpecialEquipmentAmountBrutto: Double?
  public var monthlyExternalSpecialEquipmentAmountNetto: Double?
  public var monthlyTotalAmountBrutto: Double?
  public var monthlyTotalAmountNetto: Double?
  public var monthlyVehicleAmountBrutto: Double?
  public var monthlyVehicleAmountNetto: Double?
  public var purchasePriceOptionAmountBrutto: Double?
  public var purchasePriceOptionAmountNetto: Double?
  public var totalAmountBrutto: Double?
  public var totalAmountNetto: Double?

  public init(additionalServicesMehrMinderKmFLBrutto: Double?  = nil, additionalServicesMehrMinderKmFLNetto: Double?  = nil, additionalServicesMehrMinderKmFSBrutto: Double?  = nil, additionalServicesMehrMinderKmFSNetto: Double?  = nil, additionalServicesMonthlyRateBrutto: Double?  = nil, additionalServicesMonthlyRateNetto: Double?  = nil, effectiveAnnualInterestRate: Double?  = nil, interestRate: Double?  = nil, leasingFactor: Double?  = nil, monthlyDeliveryAmountBrutto: Double?  = nil, monthlyDeliveryAmountNetto: Double?  = nil, monthlyExternalSpecialEquipmentAmountBrutto: Double?  = nil, monthlyExternalSpecialEquipmentAmountNetto: Double?  = nil, monthlyTotalAmountBrutto: Double?  = nil, monthlyTotalAmountNetto: Double?  = nil, monthlyVehicleAmountBrutto: Double?  = nil, monthlyVehicleAmountNetto: Double?  = nil, purchasePriceOptionAmountBrutto: Double?  = nil, purchasePriceOptionAmountNetto: Double?  = nil, totalAmountBrutto: Double?  = nil, totalAmountNetto: Double?  = nil) {
    self.additionalServicesMehrMinderKmFLBrutto = additionalServicesMehrMinderKmFLBrutto
    self.additionalServicesMehrMinderKmFLNetto = additionalServicesMehrMinderKmFLNetto
    self.additionalServicesMehrMinderKmFSBrutto = additionalServicesMehrMinderKmFSBrutto
    self.additionalServicesMehrMinderKmFSNetto = additionalServicesMehrMinderKmFSNetto
    self.additionalServicesMonthlyRateBrutto = additionalServicesMonthlyRateBrutto
    self.additionalServicesMonthlyRateNetto = additionalServicesMonthlyRateNetto
    self.effectiveAnnualInterestRate = effectiveAnnualInterestRate
    self.interestRate = interestRate
    self.leasingFactor = leasingFactor
    self.monthlyDeliveryAmountBrutto = monthlyDeliveryAmountBrutto
    self.monthlyDeliveryAmountNetto = monthlyDeliveryAmountNetto
    self.monthlyExternalSpecialEquipmentAmountBrutto = monthlyExternalSpecialEquipmentAmountBrutto
    self.monthlyExternalSpecialEquipmentAmountNetto = monthlyExternalSpecialEquipmentAmountNetto
    self.monthlyTotalAmountBrutto = monthlyTotalAmountBrutto
    self.monthlyTotalAmountNetto = monthlyTotalAmountNetto
    self.monthlyVehicleAmountBrutto = monthlyVehicleAmountBrutto
    self.monthlyVehicleAmountNetto = monthlyVehicleAmountNetto
    self.purchasePriceOptionAmountBrutto = purchasePriceOptionAmountBrutto
    self.purchasePriceOptionAmountNetto = purchasePriceOptionAmountNetto
    self.totalAmountBrutto = totalAmountBrutto
    self.totalAmountNetto = totalAmountNetto
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleDataLeasingMileagePricesInfo else { return false }
    guard self.additionalServicesMehrMinderKmFLBrutto == object.additionalServicesMehrMinderKmFLBrutto else { return false }
    guard self.additionalServicesMehrMinderKmFLNetto == object.additionalServicesMehrMinderKmFLNetto else { return false }
    guard self.additionalServicesMehrMinderKmFSBrutto == object.additionalServicesMehrMinderKmFSBrutto else { return false }
    guard self.additionalServicesMehrMinderKmFSNetto == object.additionalServicesMehrMinderKmFSNetto else { return false }
    guard self.additionalServicesMonthlyRateBrutto == object.additionalServicesMonthlyRateBrutto else { return false }
    guard self.additionalServicesMonthlyRateNetto == object.additionalServicesMonthlyRateNetto else { return false }
    guard self.effectiveAnnualInterestRate == object.effectiveAnnualInterestRate else { return false }
    guard self.interestRate == object.interestRate else { return false }
    guard self.leasingFactor == object.leasingFactor else { return false }
    guard self.monthlyDeliveryAmountBrutto == object.monthlyDeliveryAmountBrutto else { return false }
    guard self.monthlyDeliveryAmountNetto == object.monthlyDeliveryAmountNetto else { return false }
    guard self.monthlyExternalSpecialEquipmentAmountBrutto == object.monthlyExternalSpecialEquipmentAmountBrutto else { return false }
    guard self.monthlyExternalSpecialEquipmentAmountNetto == object.monthlyExternalSpecialEquipmentAmountNetto else { return false }
    guard self.monthlyTotalAmountBrutto == object.monthlyTotalAmountBrutto else { return false }
    guard self.monthlyTotalAmountNetto == object.monthlyTotalAmountNetto else { return false }
    guard self.monthlyVehicleAmountBrutto == object.monthlyVehicleAmountBrutto else { return false }
    guard self.monthlyVehicleAmountNetto == object.monthlyVehicleAmountNetto else { return false }
    guard self.purchasePriceOptionAmountBrutto == object.purchasePriceOptionAmountBrutto else { return false }
    guard self.purchasePriceOptionAmountNetto == object.purchasePriceOptionAmountNetto else { return false }
    guard self.totalAmountBrutto == object.totalAmountBrutto else { return false }
    guard self.totalAmountNetto == object.totalAmountNetto else { return false }
    return true
  }

  public static func == (lhs: VehicleDataLeasingMileagePricesInfo, rhs: VehicleDataLeasingMileagePricesInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}