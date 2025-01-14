//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeasingDataDocmosis: Codable, Equatable {
  public var fullPrice: Double?
  public var lastRateAmount: Double?
  public var leasingMileage: Int?
  public var leasingMonthlyRate: Double?
  public var leasingPeriod: Int?
  public var leasingPrices: VehicleDataLeasingMileagePricesInfo?
  public var purchasePriceOptionAmount: Double?

  public init(fullPrice: Double?  = nil, lastRateAmount: Double?  = nil, leasingMileage: Int?  = nil, leasingMonthlyRate: Double?  = nil, leasingPeriod: Int?  = nil, leasingPrices: VehicleDataLeasingMileagePricesInfo?  = nil, purchasePriceOptionAmount: Double?  = nil) {
    self.fullPrice = fullPrice
    self.lastRateAmount = lastRateAmount
    self.leasingMileage = leasingMileage
    self.leasingMonthlyRate = leasingMonthlyRate
    self.leasingPeriod = leasingPeriod
    self.leasingPrices = leasingPrices
    self.purchasePriceOptionAmount = purchasePriceOptionAmount
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeasingDataDocmosis else { return false }
    guard self.fullPrice == object.fullPrice else { return false }
    guard self.lastRateAmount == object.lastRateAmount else { return false }
    guard self.leasingMileage == object.leasingMileage else { return false }
    guard self.leasingMonthlyRate == object.leasingMonthlyRate else { return false }
    guard self.leasingPeriod == object.leasingPeriod else { return false }
    guard self.leasingPrices == object.leasingPrices else { return false }
    guard self.purchasePriceOptionAmount == object.purchasePriceOptionAmount else { return false }
    return true
  }

  public static func == (lhs: LeasingDataDocmosis, rhs: LeasingDataDocmosis) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
