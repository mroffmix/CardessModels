//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationTradeInValuationOverview: Codable, Equatable {
  public var aF24AdjustedFutureMarketPrice: CommunicationTradeInMonetaryValue?
  public var aF24AppliedDepreciationPrice: CommunicationTradeInMonetaryValue?
  public var aF24DepreciatedPrice: CommunicationTradeInMonetaryValue?
  public var autofokus24AdjustedFutureMarketPrice: CommunicationTradeInMonetaryValue?
  public var autofokus24AppliedDepreciationPrice: CommunicationTradeInMonetaryValue?
  public var autofokus24BuyingPrice: CommunicationTradeInMonetaryValue?
  public var autofokus24DepreciatedPrice: CommunicationTradeInMonetaryValue?
  public var autofokus24SalesPrice: CommunicationTradeInMonetaryValue?
  public var baseValuationOriginalPrice: CommunicationTradeInMonetaryValue?
  public var baseValuationPurchasePrice: CommunicationTradeInMonetaryValue?
  public var baseValuationSalesPrice: CommunicationTradeInMonetaryValue?
  public var basedMarketPrice: CommunicationTradeInMonetaryValue?
  public var calcValuationMileage: Int?
  public var combinedPrice: CommunicationTradeInMonetaryValue?
  public var contractEndDate: Date?
  public var contractEndMileage: Int?
  public var contractMileage: Int?
  public var contractPeriodInDays: Int?
  public var contractStartDate: Date?
  public var contractStartMileage: Int?
  public var contractYearlyMileage: Int?
  public var datWeight: Double?
  public var daysSinceContractStart: Int?
  public var deviation: Double?
  public var deviationPrice: CommunicationTradeInMonetaryValue?
  public var equipmentPriceVwfs: CommunicationTradeInMonetaryValue?
  public var expectedMarketEoCPrice: CommunicationTradeInMonetaryValue?
  public var expectedMarketValueEoC: CommunicationTradeInMonetaryValue?
  public var expectedRVRatioRRP: Double?
  public var forecast12Price: CommunicationTradeInMonetaryValue?
  public var forecast24Price: CommunicationTradeInMonetaryValue?
  public var forecast36Price: CommunicationTradeInMonetaryValue?
  public var forecastDepreciationFactor: Double?
  public var forecastDepreciationPrice: CommunicationTradeInMonetaryValue?
  public var forecastMonth: Int?
  public var forecastRVPrice: CommunicationTradeInMonetaryValue?
  public var margin: CommunicationTradeInMonetaryValue?
  public var optionsAdjustment: CommunicationTradeInMonetaryValue?
  public var originalBasePriceVwfs: CommunicationTradeInMonetaryValue?
  public var originalRetailPriceVwfs: CommunicationTradeInMonetaryValue?
  public var originalpriceVwfs: CommunicationTradeInMonetaryValue?
  public var rvEquipmentRatio: Double?
  public var valuationDate: Date?
  public var valuationPurchasePrice: CommunicationTradeInMonetaryValue?
  public var valuationSalesPrice: CommunicationTradeInMonetaryValue?

  public init(aF24AdjustedFutureMarketPrice: CommunicationTradeInMonetaryValue?  = nil, aF24AppliedDepreciationPrice: CommunicationTradeInMonetaryValue?  = nil, aF24DepreciatedPrice: CommunicationTradeInMonetaryValue?  = nil, autofokus24AdjustedFutureMarketPrice: CommunicationTradeInMonetaryValue?  = nil, autofokus24AppliedDepreciationPrice: CommunicationTradeInMonetaryValue?  = nil, autofokus24BuyingPrice: CommunicationTradeInMonetaryValue?  = nil, autofokus24DepreciatedPrice: CommunicationTradeInMonetaryValue?  = nil, autofokus24SalesPrice: CommunicationTradeInMonetaryValue?  = nil, baseValuationOriginalPrice: CommunicationTradeInMonetaryValue?  = nil, baseValuationPurchasePrice: CommunicationTradeInMonetaryValue?  = nil, baseValuationSalesPrice: CommunicationTradeInMonetaryValue?  = nil, basedMarketPrice: CommunicationTradeInMonetaryValue?  = nil, calcValuationMileage: Int?  = nil, combinedPrice: CommunicationTradeInMonetaryValue?  = nil, contractEndDate: Date? = nil, contractEndMileage: Int?  = nil, contractMileage: Int?  = nil, contractPeriodInDays: Int?  = nil, contractStartDate: Date? = nil, contractStartMileage: Int?  = nil, contractYearlyMileage: Int?  = nil, datWeight: Double?  = nil, daysSinceContractStart: Int?  = nil, deviation: Double?  = nil, deviationPrice: CommunicationTradeInMonetaryValue?  = nil, equipmentPriceVwfs: CommunicationTradeInMonetaryValue?  = nil, expectedMarketEoCPrice: CommunicationTradeInMonetaryValue?  = nil, expectedMarketValueEoC: CommunicationTradeInMonetaryValue?  = nil, expectedRVRatioRRP: Double?  = nil, forecast12Price: CommunicationTradeInMonetaryValue?  = nil, forecast24Price: CommunicationTradeInMonetaryValue?  = nil, forecast36Price: CommunicationTradeInMonetaryValue?  = nil, forecastDepreciationFactor: Double?  = nil, forecastDepreciationPrice: CommunicationTradeInMonetaryValue?  = nil, forecastMonth: Int?  = nil, forecastRVPrice: CommunicationTradeInMonetaryValue?  = nil, margin: CommunicationTradeInMonetaryValue?  = nil, optionsAdjustment: CommunicationTradeInMonetaryValue?  = nil, originalBasePriceVwfs: CommunicationTradeInMonetaryValue?  = nil, originalRetailPriceVwfs: CommunicationTradeInMonetaryValue?  = nil, originalpriceVwfs: CommunicationTradeInMonetaryValue?  = nil, rvEquipmentRatio: Double?  = nil, valuationDate: Date? = nil, valuationPurchasePrice: CommunicationTradeInMonetaryValue?  = nil, valuationSalesPrice: CommunicationTradeInMonetaryValue?  = nil) {
    self.aF24AdjustedFutureMarketPrice = aF24AdjustedFutureMarketPrice
    self.aF24AppliedDepreciationPrice = aF24AppliedDepreciationPrice
    self.aF24DepreciatedPrice = aF24DepreciatedPrice
    self.autofokus24AdjustedFutureMarketPrice = autofokus24AdjustedFutureMarketPrice
    self.autofokus24AppliedDepreciationPrice = autofokus24AppliedDepreciationPrice
    self.autofokus24BuyingPrice = autofokus24BuyingPrice
    self.autofokus24DepreciatedPrice = autofokus24DepreciatedPrice
    self.autofokus24SalesPrice = autofokus24SalesPrice
    self.baseValuationOriginalPrice = baseValuationOriginalPrice
    self.baseValuationPurchasePrice = baseValuationPurchasePrice
    self.baseValuationSalesPrice = baseValuationSalesPrice
    self.basedMarketPrice = basedMarketPrice
    self.calcValuationMileage = calcValuationMileage
    self.combinedPrice = combinedPrice
    self.contractEndDate = contractEndDate
    self.contractEndMileage = contractEndMileage
    self.contractMileage = contractMileage
    self.contractPeriodInDays = contractPeriodInDays
    self.contractStartDate = contractStartDate
    self.contractStartMileage = contractStartMileage
    self.contractYearlyMileage = contractYearlyMileage
    self.datWeight = datWeight
    self.daysSinceContractStart = daysSinceContractStart
    self.deviation = deviation
    self.deviationPrice = deviationPrice
    self.equipmentPriceVwfs = equipmentPriceVwfs
    self.expectedMarketEoCPrice = expectedMarketEoCPrice
    self.expectedMarketValueEoC = expectedMarketValueEoC
    self.expectedRVRatioRRP = expectedRVRatioRRP
    self.forecast12Price = forecast12Price
    self.forecast24Price = forecast24Price
    self.forecast36Price = forecast36Price
    self.forecastDepreciationFactor = forecastDepreciationFactor
    self.forecastDepreciationPrice = forecastDepreciationPrice
    self.forecastMonth = forecastMonth
    self.forecastRVPrice = forecastRVPrice
    self.margin = margin
    self.optionsAdjustment = optionsAdjustment
    self.originalBasePriceVwfs = originalBasePriceVwfs
    self.originalRetailPriceVwfs = originalRetailPriceVwfs
    self.originalpriceVwfs = originalpriceVwfs
    self.rvEquipmentRatio = rvEquipmentRatio
    self.valuationDate = valuationDate
    self.valuationPurchasePrice = valuationPurchasePrice
    self.valuationSalesPrice = valuationSalesPrice
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationTradeInValuationOverview else { return false }
    guard self.aF24AdjustedFutureMarketPrice == object.aF24AdjustedFutureMarketPrice else { return false }
    guard self.aF24AppliedDepreciationPrice == object.aF24AppliedDepreciationPrice else { return false }
    guard self.aF24DepreciatedPrice == object.aF24DepreciatedPrice else { return false }
    guard self.autofokus24AdjustedFutureMarketPrice == object.autofokus24AdjustedFutureMarketPrice else { return false }
    guard self.autofokus24AppliedDepreciationPrice == object.autofokus24AppliedDepreciationPrice else { return false }
    guard self.autofokus24BuyingPrice == object.autofokus24BuyingPrice else { return false }
    guard self.autofokus24DepreciatedPrice == object.autofokus24DepreciatedPrice else { return false }
    guard self.autofokus24SalesPrice == object.autofokus24SalesPrice else { return false }
    guard self.baseValuationOriginalPrice == object.baseValuationOriginalPrice else { return false }
    guard self.baseValuationPurchasePrice == object.baseValuationPurchasePrice else { return false }
    guard self.baseValuationSalesPrice == object.baseValuationSalesPrice else { return false }
    guard self.basedMarketPrice == object.basedMarketPrice else { return false }
    guard self.calcValuationMileage == object.calcValuationMileage else { return false }
    guard self.combinedPrice == object.combinedPrice else { return false }
    guard self.contractEndDate == object.contractEndDate else { return false }
    guard self.contractEndMileage == object.contractEndMileage else { return false }
    guard self.contractMileage == object.contractMileage else { return false }
    guard self.contractPeriodInDays == object.contractPeriodInDays else { return false }
    guard self.contractStartDate == object.contractStartDate else { return false }
    guard self.contractStartMileage == object.contractStartMileage else { return false }
    guard self.contractYearlyMileage == object.contractYearlyMileage else { return false }
    guard self.datWeight == object.datWeight else { return false }
    guard self.daysSinceContractStart == object.daysSinceContractStart else { return false }
    guard self.deviation == object.deviation else { return false }
    guard self.deviationPrice == object.deviationPrice else { return false }
    guard self.equipmentPriceVwfs == object.equipmentPriceVwfs else { return false }
    guard self.expectedMarketEoCPrice == object.expectedMarketEoCPrice else { return false }
    guard self.expectedMarketValueEoC == object.expectedMarketValueEoC else { return false }
    guard self.expectedRVRatioRRP == object.expectedRVRatioRRP else { return false }
    guard self.forecast12Price == object.forecast12Price else { return false }
    guard self.forecast24Price == object.forecast24Price else { return false }
    guard self.forecast36Price == object.forecast36Price else { return false }
    guard self.forecastDepreciationFactor == object.forecastDepreciationFactor else { return false }
    guard self.forecastDepreciationPrice == object.forecastDepreciationPrice else { return false }
    guard self.forecastMonth == object.forecastMonth else { return false }
    guard self.forecastRVPrice == object.forecastRVPrice else { return false }
    guard self.margin == object.margin else { return false }
    guard self.optionsAdjustment == object.optionsAdjustment else { return false }
    guard self.originalBasePriceVwfs == object.originalBasePriceVwfs else { return false }
    guard self.originalRetailPriceVwfs == object.originalRetailPriceVwfs else { return false }
    guard self.originalpriceVwfs == object.originalpriceVwfs else { return false }
    guard self.rvEquipmentRatio == object.rvEquipmentRatio else { return false }
    guard self.valuationDate == object.valuationDate else { return false }
    guard self.valuationPurchasePrice == object.valuationPurchasePrice else { return false }
    guard self.valuationSalesPrice == object.valuationSalesPrice else { return false }
    return true
  }

  public static func == (lhs: CommunicationTradeInValuationOverview, rhs: CommunicationTradeInValuationOverview) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
