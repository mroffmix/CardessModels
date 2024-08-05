//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class OfferRequestInfo: Codable, Equatable {
  public var annualMileage: Double?
  public var comment: String?
  public var contractTerm: Double?
  public var downPayment: Double?
  public var leadVehicleId: String?
  public var monthlyPaymentLimit: Double?
  public var paymentMethod: CommunicationModelsEnumsTypeOfPayment?
  public var tradeInRequested: Bool?

  public init(annualMileage: Double?  = nil, comment: String?  = nil, contractTerm: Double?  = nil, downPayment: Double?  = nil, leadVehicleId: String? = nil, monthlyPaymentLimit: Double?  = nil, paymentMethod: CommunicationModelsEnumsTypeOfPayment?  = nil, tradeInRequested: Bool?  = nil) {
    self.annualMileage = annualMileage
    self.comment = comment
    self.contractTerm = contractTerm
    self.downPayment = downPayment
    self.leadVehicleId = leadVehicleId
    self.monthlyPaymentLimit = monthlyPaymentLimit
    self.paymentMethod = paymentMethod
    self.tradeInRequested = tradeInRequested
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? OfferRequestInfo else { return false }
    guard self.annualMileage == object.annualMileage else { return false }
    guard self.comment == object.comment else { return false }
    guard self.contractTerm == object.contractTerm else { return false }
    guard self.downPayment == object.downPayment else { return false }
    guard self.leadVehicleId == object.leadVehicleId else { return false }
    guard self.monthlyPaymentLimit == object.monthlyPaymentLimit else { return false }
    guard self.paymentMethod == object.paymentMethod else { return false }
    guard self.tradeInRequested == object.tradeInRequested else { return false }
    return true
  }

  public static func == (lhs: OfferRequestInfo, rhs: OfferRequestInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
