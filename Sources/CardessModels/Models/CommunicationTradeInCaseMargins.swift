//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationTradeInCaseMargins: Codable, Equatable {
  public var costOfWarranty: CommunicationTradeInMonetaryValue?
  public var dealerMargin: CommunicationTradeInMonetaryValue?
  public var otherCostsOrRevenue: CommunicationTradeInMonetaryValue?
  public var refurbishingAndRepairCosts: CommunicationTradeInMonetaryValue?
  public var salesCommission: CommunicationTradeInMonetaryValue?

  public init(costOfWarranty: CommunicationTradeInMonetaryValue?  = nil, dealerMargin: CommunicationTradeInMonetaryValue?  = nil, otherCostsOrRevenue: CommunicationTradeInMonetaryValue?  = nil, refurbishingAndRepairCosts: CommunicationTradeInMonetaryValue?  = nil, salesCommission: CommunicationTradeInMonetaryValue?  = nil) {
    self.costOfWarranty = costOfWarranty
    self.dealerMargin = dealerMargin
    self.otherCostsOrRevenue = otherCostsOrRevenue
    self.refurbishingAndRepairCosts = refurbishingAndRepairCosts
    self.salesCommission = salesCommission
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationTradeInCaseMargins else { return false }
    guard self.costOfWarranty == object.costOfWarranty else { return false }
    guard self.dealerMargin == object.dealerMargin else { return false }
    guard self.otherCostsOrRevenue == object.otherCostsOrRevenue else { return false }
    guard self.refurbishingAndRepairCosts == object.refurbishingAndRepairCosts else { return false }
    guard self.salesCommission == object.salesCommission else { return false }
    return true
  }

  public static func == (lhs: CommunicationTradeInCaseMargins, rhs: CommunicationTradeInCaseMargins) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}