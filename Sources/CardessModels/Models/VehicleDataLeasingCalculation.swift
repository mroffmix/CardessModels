//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleDataLeasingCalculation: Codable, Equatable {
  public var additionalCalculations: [String: VehicleDataLeasingCalculation]?
  public var calculationRules: [VehicleDataCalculationRuleInfo]?
  public var dealerDiscountRuleId: String?
  public var defaultBalloonBrutto: Double?
  public var defaultBalloonNetto: Double?
  public var defaultDepositBrutto: Double?
  public var defaultDepositNetto: Double?
  public var defaultMileage: Int?
  public var defaultPeriod: Int?
  public var defaultPrepaymentPercent: Double?
  public var downPaymentAmountBrutto: Double?
  public var downPaymentAmountNetto: Double?
  public var downPaymentTotalAmountBrutto: Double?
  public var downPaymentTotalAmountNetto: Double?
  public var finalPaymentAmountBrutto: Double?
  public var finalPaymentAmountNetto: Double?
  public var insuranceMonthlyRateBrutto: Double?
  public var insuranceMonthlyRateNetto: Double?
  public var lastRateAmountBrutto: Double?
  public var lastRateAmountNetto: Double?
  public var lessKmAmountBrutto: Double?
  public var lessKmAmountNetto: Double?
  public var maxBalloonBrutto: Double?
  public var maxBalloonNetto: Double?
  public var maxDepositBrutto: Double?
  public var maxDepositNetto: Double?
  public var mileage: Int?
  public var mileages: [Int]?
  public var minBalloonBrutto: Double?
  public var minBalloonNetto: Double?
  public var minDepositBrutto: Double?
  public var minDepositNetto: Double?
  public var moreKmAmountBrutto: Double?
  public var moreKmAmountNetto: Double?
  public var netLoanAmountBrutto: Double?
  public var netLoanAmountNetto: Double?
  public var oneTimeDeliveryPaymentAmountBrutto: Double?
  public var oneTimeDeliveryPaymentAmountNetto: Double?
  public var period: Int?
  public var periodCalculation: VehicleDataLeasingPeriodCalculation?
  public var prepaymentAmount: Double?
  public var prepaymentPercent: Double?
  public var signoutAndOrAppraiserAmountBrutto: Double?
  public var signoutAndOrAppraiserAmountNetto: Double?
  public var terms: [Int]?
  public var totalInterestAmountBrutto: Double?
  public var totalInterestAmountNetto: Double?
  public var vehiclePriceIncludingAllSpecialEquipmentBrutto: Double?
  public var vehiclePriceIncludingAllSpecialEquipmentNetto: Double?

  public init(additionalCalculations: [String: VehicleDataLeasingCalculation]?  = nil, calculationRules: [VehicleDataCalculationRuleInfo]?  = nil, dealerDiscountRuleId: String? = nil, defaultBalloonBrutto: Double?  = nil, defaultBalloonNetto: Double?  = nil, defaultDepositBrutto: Double?  = nil, defaultDepositNetto: Double?  = nil, defaultMileage: Int?  = nil, defaultPeriod: Int?  = nil, defaultPrepaymentPercent: Double?  = nil, downPaymentAmountBrutto: Double?  = nil, downPaymentAmountNetto: Double?  = nil, downPaymentTotalAmountBrutto: Double?  = nil, downPaymentTotalAmountNetto: Double?  = nil, finalPaymentAmountBrutto: Double?  = nil, finalPaymentAmountNetto: Double?  = nil, insuranceMonthlyRateBrutto: Double?  = nil, insuranceMonthlyRateNetto: Double?  = nil, lastRateAmountBrutto: Double?  = nil, lastRateAmountNetto: Double?  = nil, lessKmAmountBrutto: Double?  = nil, lessKmAmountNetto: Double?  = nil, maxBalloonBrutto: Double?  = nil, maxBalloonNetto: Double?  = nil, maxDepositBrutto: Double?  = nil, maxDepositNetto: Double?  = nil, mileage: Int?  = nil, mileages: [Int]?  = nil, minBalloonBrutto: Double?  = nil, minBalloonNetto: Double?  = nil, minDepositBrutto: Double?  = nil, minDepositNetto: Double?  = nil, moreKmAmountBrutto: Double?  = nil, moreKmAmountNetto: Double?  = nil, netLoanAmountBrutto: Double?  = nil, netLoanAmountNetto: Double?  = nil, oneTimeDeliveryPaymentAmountBrutto: Double?  = nil, oneTimeDeliveryPaymentAmountNetto: Double?  = nil, period: Int?  = nil, periodCalculation: VehicleDataLeasingPeriodCalculation?  = nil, prepaymentAmount: Double?  = nil, prepaymentPercent: Double?  = nil, signoutAndOrAppraiserAmountBrutto: Double?  = nil, signoutAndOrAppraiserAmountNetto: Double?  = nil, terms: [Int]?  = nil, totalInterestAmountBrutto: Double?  = nil, totalInterestAmountNetto: Double?  = nil, vehiclePriceIncludingAllSpecialEquipmentBrutto: Double?  = nil, vehiclePriceIncludingAllSpecialEquipmentNetto: Double?  = nil) {
    self.additionalCalculations = additionalCalculations
    self.calculationRules = calculationRules
    self.dealerDiscountRuleId = dealerDiscountRuleId
    self.defaultBalloonBrutto = defaultBalloonBrutto
    self.defaultBalloonNetto = defaultBalloonNetto
    self.defaultDepositBrutto = defaultDepositBrutto
    self.defaultDepositNetto = defaultDepositNetto
    self.defaultMileage = defaultMileage
    self.defaultPeriod = defaultPeriod
    self.defaultPrepaymentPercent = defaultPrepaymentPercent
    self.downPaymentAmountBrutto = downPaymentAmountBrutto
    self.downPaymentAmountNetto = downPaymentAmountNetto
    self.downPaymentTotalAmountBrutto = downPaymentTotalAmountBrutto
    self.downPaymentTotalAmountNetto = downPaymentTotalAmountNetto
    self.finalPaymentAmountBrutto = finalPaymentAmountBrutto
    self.finalPaymentAmountNetto = finalPaymentAmountNetto
    self.insuranceMonthlyRateBrutto = insuranceMonthlyRateBrutto
    self.insuranceMonthlyRateNetto = insuranceMonthlyRateNetto
    self.lastRateAmountBrutto = lastRateAmountBrutto
    self.lastRateAmountNetto = lastRateAmountNetto
    self.lessKmAmountBrutto = lessKmAmountBrutto
    self.lessKmAmountNetto = lessKmAmountNetto
    self.maxBalloonBrutto = maxBalloonBrutto
    self.maxBalloonNetto = maxBalloonNetto
    self.maxDepositBrutto = maxDepositBrutto
    self.maxDepositNetto = maxDepositNetto
    self.mileage = mileage
    self.mileages = mileages
    self.minBalloonBrutto = minBalloonBrutto
    self.minBalloonNetto = minBalloonNetto
    self.minDepositBrutto = minDepositBrutto
    self.minDepositNetto = minDepositNetto
    self.moreKmAmountBrutto = moreKmAmountBrutto
    self.moreKmAmountNetto = moreKmAmountNetto
    self.netLoanAmountBrutto = netLoanAmountBrutto
    self.netLoanAmountNetto = netLoanAmountNetto
    self.oneTimeDeliveryPaymentAmountBrutto = oneTimeDeliveryPaymentAmountBrutto
    self.oneTimeDeliveryPaymentAmountNetto = oneTimeDeliveryPaymentAmountNetto
    self.period = period
    self.periodCalculation = periodCalculation
    self.prepaymentAmount = prepaymentAmount
    self.prepaymentPercent = prepaymentPercent
    self.signoutAndOrAppraiserAmountBrutto = signoutAndOrAppraiserAmountBrutto
    self.signoutAndOrAppraiserAmountNetto = signoutAndOrAppraiserAmountNetto
    self.terms = terms
    self.totalInterestAmountBrutto = totalInterestAmountBrutto
    self.totalInterestAmountNetto = totalInterestAmountNetto
    self.vehiclePriceIncludingAllSpecialEquipmentBrutto = vehiclePriceIncludingAllSpecialEquipmentBrutto
    self.vehiclePriceIncludingAllSpecialEquipmentNetto = vehiclePriceIncludingAllSpecialEquipmentNetto
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleDataLeasingCalculation else { return false }
    guard self.additionalCalculations == object.additionalCalculations else { return false }
    guard self.calculationRules == object.calculationRules else { return false }
    guard self.dealerDiscountRuleId == object.dealerDiscountRuleId else { return false }
    guard self.defaultBalloonBrutto == object.defaultBalloonBrutto else { return false }
    guard self.defaultBalloonNetto == object.defaultBalloonNetto else { return false }
    guard self.defaultDepositBrutto == object.defaultDepositBrutto else { return false }
    guard self.defaultDepositNetto == object.defaultDepositNetto else { return false }
    guard self.defaultMileage == object.defaultMileage else { return false }
    guard self.defaultPeriod == object.defaultPeriod else { return false }
    guard self.defaultPrepaymentPercent == object.defaultPrepaymentPercent else { return false }
    guard self.downPaymentAmountBrutto == object.downPaymentAmountBrutto else { return false }
    guard self.downPaymentAmountNetto == object.downPaymentAmountNetto else { return false }
    guard self.downPaymentTotalAmountBrutto == object.downPaymentTotalAmountBrutto else { return false }
    guard self.downPaymentTotalAmountNetto == object.downPaymentTotalAmountNetto else { return false }
    guard self.finalPaymentAmountBrutto == object.finalPaymentAmountBrutto else { return false }
    guard self.finalPaymentAmountNetto == object.finalPaymentAmountNetto else { return false }
    guard self.insuranceMonthlyRateBrutto == object.insuranceMonthlyRateBrutto else { return false }
    guard self.insuranceMonthlyRateNetto == object.insuranceMonthlyRateNetto else { return false }
    guard self.lastRateAmountBrutto == object.lastRateAmountBrutto else { return false }
    guard self.lastRateAmountNetto == object.lastRateAmountNetto else { return false }
    guard self.lessKmAmountBrutto == object.lessKmAmountBrutto else { return false }
    guard self.lessKmAmountNetto == object.lessKmAmountNetto else { return false }
    guard self.maxBalloonBrutto == object.maxBalloonBrutto else { return false }
    guard self.maxBalloonNetto == object.maxBalloonNetto else { return false }
    guard self.maxDepositBrutto == object.maxDepositBrutto else { return false }
    guard self.maxDepositNetto == object.maxDepositNetto else { return false }
    guard self.mileage == object.mileage else { return false }
    guard self.mileages == object.mileages else { return false }
    guard self.minBalloonBrutto == object.minBalloonBrutto else { return false }
    guard self.minBalloonNetto == object.minBalloonNetto else { return false }
    guard self.minDepositBrutto == object.minDepositBrutto else { return false }
    guard self.minDepositNetto == object.minDepositNetto else { return false }
    guard self.moreKmAmountBrutto == object.moreKmAmountBrutto else { return false }
    guard self.moreKmAmountNetto == object.moreKmAmountNetto else { return false }
    guard self.netLoanAmountBrutto == object.netLoanAmountBrutto else { return false }
    guard self.netLoanAmountNetto == object.netLoanAmountNetto else { return false }
    guard self.oneTimeDeliveryPaymentAmountBrutto == object.oneTimeDeliveryPaymentAmountBrutto else { return false }
    guard self.oneTimeDeliveryPaymentAmountNetto == object.oneTimeDeliveryPaymentAmountNetto else { return false }
    guard self.period == object.period else { return false }
    guard self.periodCalculation == object.periodCalculation else { return false }
    guard self.prepaymentAmount == object.prepaymentAmount else { return false }
    guard self.prepaymentPercent == object.prepaymentPercent else { return false }
    guard self.signoutAndOrAppraiserAmountBrutto == object.signoutAndOrAppraiserAmountBrutto else { return false }
    guard self.signoutAndOrAppraiserAmountNetto == object.signoutAndOrAppraiserAmountNetto else { return false }
    guard self.terms == object.terms else { return false }
    guard self.totalInterestAmountBrutto == object.totalInterestAmountBrutto else { return false }
    guard self.totalInterestAmountNetto == object.totalInterestAmountNetto else { return false }
    guard self.vehiclePriceIncludingAllSpecialEquipmentBrutto == object.vehiclePriceIncludingAllSpecialEquipmentBrutto else { return false }
    guard self.vehiclePriceIncludingAllSpecialEquipmentNetto == object.vehiclePriceIncludingAllSpecialEquipmentNetto else { return false }
    return true
  }

  public static func == (lhs: VehicleDataLeasingCalculation, rhs: VehicleDataLeasingCalculation) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}