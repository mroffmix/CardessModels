//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleOnlineProcessSettingsInfo: Codable, Equatable {
  public var aboCaption: String?
  public var aboDefaultMileage: Int?
  public var aboDefaultPeriod: Int?
  public var aboDescription: String?
  public var aboFinancingOptionAvailable: Bool?
  public var aboTitle: String?
  public var cashFinancingOptionAvailable: Bool?
  public var creditFinancingOptionAvailable: Bool?
  public var customerType: Bool?
  public var customerTypeOnly: Bool?
  public var defaultTemplates: DefaultProcessTemplateInfo?
  public var id: String?
  public var isMapDisabled: Bool?
  public var leasingCaption: String?
  public var leasingDefaultMileage: Int?
  public var leasingDefaultPeriod: Int?
  public var leasingDescription: String?
  public var leasingFinancingOptionAvailable: Bool?
  public var leasingTitle: String?
  public var name: String?
  public var processTypeOfPayment: VehicleDataEnumsProcessTypeOfPayment?
  public var processTypeOfPaymentOnly: Bool?
  public var settingsId: String?
  public var showDealerInfo: Bool?
  public var varioCaption: String?
  public var varioDefaultMileage: Int?
  public var varioDefaultPeriod: Int?
  public var varioDescription: String?
  public var varioTitle: String?

  public init(aboCaption: String?  = nil, aboDefaultMileage: Int?  = nil, aboDefaultPeriod: Int?  = nil, aboDescription: String?  = nil, aboFinancingOptionAvailable: Bool?  = nil, aboTitle: String?  = nil, cashFinancingOptionAvailable: Bool?  = nil, creditFinancingOptionAvailable: Bool?  = nil, customerType: Bool?  = nil, customerTypeOnly: Bool?  = nil, defaultTemplates: DefaultProcessTemplateInfo?  = nil, id: String? = nil, isMapDisabled: Bool?  = nil, leasingCaption: String?  = nil, leasingDefaultMileage: Int?  = nil, leasingDefaultPeriod: Int?  = nil, leasingDescription: String?  = nil, leasingFinancingOptionAvailable: Bool?  = nil, leasingTitle: String?  = nil, name: String?  = nil, processTypeOfPayment: VehicleDataEnumsProcessTypeOfPayment?  = nil, processTypeOfPaymentOnly: Bool?  = nil, settingsId: String? = nil, showDealerInfo: Bool?  = nil, varioCaption: String?  = nil, varioDefaultMileage: Int?  = nil, varioDefaultPeriod: Int?  = nil, varioDescription: String?  = nil, varioTitle: String?  = nil) {
    self.aboCaption = aboCaption
    self.aboDefaultMileage = aboDefaultMileage
    self.aboDefaultPeriod = aboDefaultPeriod
    self.aboDescription = aboDescription
    self.aboFinancingOptionAvailable = aboFinancingOptionAvailable
    self.aboTitle = aboTitle
    self.cashFinancingOptionAvailable = cashFinancingOptionAvailable
    self.creditFinancingOptionAvailable = creditFinancingOptionAvailable
    self.customerType = customerType
    self.customerTypeOnly = customerTypeOnly
    self.defaultTemplates = defaultTemplates
    self.id = id
    self.isMapDisabled = isMapDisabled
    self.leasingCaption = leasingCaption
    self.leasingDefaultMileage = leasingDefaultMileage
    self.leasingDefaultPeriod = leasingDefaultPeriod
    self.leasingDescription = leasingDescription
    self.leasingFinancingOptionAvailable = leasingFinancingOptionAvailable
    self.leasingTitle = leasingTitle
    self.name = name
    self.processTypeOfPayment = processTypeOfPayment
    self.processTypeOfPaymentOnly = processTypeOfPaymentOnly
    self.settingsId = settingsId
    self.showDealerInfo = showDealerInfo
    self.varioCaption = varioCaption
    self.varioDefaultMileage = varioDefaultMileage
    self.varioDefaultPeriod = varioDefaultPeriod
    self.varioDescription = varioDescription
    self.varioTitle = varioTitle
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleOnlineProcessSettingsInfo else { return false }
    guard self.aboCaption == object.aboCaption else { return false }
    guard self.aboDefaultMileage == object.aboDefaultMileage else { return false }
    guard self.aboDefaultPeriod == object.aboDefaultPeriod else { return false }
    guard self.aboDescription == object.aboDescription else { return false }
    guard self.aboFinancingOptionAvailable == object.aboFinancingOptionAvailable else { return false }
    guard self.aboTitle == object.aboTitle else { return false }
    guard self.cashFinancingOptionAvailable == object.cashFinancingOptionAvailable else { return false }
    guard self.creditFinancingOptionAvailable == object.creditFinancingOptionAvailable else { return false }
    guard self.customerType == object.customerType else { return false }
    guard self.customerTypeOnly == object.customerTypeOnly else { return false }
    guard self.defaultTemplates == object.defaultTemplates else { return false }
    guard self.id == object.id else { return false }
    guard self.isMapDisabled == object.isMapDisabled else { return false }
    guard self.leasingCaption == object.leasingCaption else { return false }
    guard self.leasingDefaultMileage == object.leasingDefaultMileage else { return false }
    guard self.leasingDefaultPeriod == object.leasingDefaultPeriod else { return false }
    guard self.leasingDescription == object.leasingDescription else { return false }
    guard self.leasingFinancingOptionAvailable == object.leasingFinancingOptionAvailable else { return false }
    guard self.leasingTitle == object.leasingTitle else { return false }
    guard self.name == object.name else { return false }
    guard self.processTypeOfPayment == object.processTypeOfPayment else { return false }
    guard self.processTypeOfPaymentOnly == object.processTypeOfPaymentOnly else { return false }
    guard self.settingsId == object.settingsId else { return false }
    guard self.showDealerInfo == object.showDealerInfo else { return false }
    guard self.varioCaption == object.varioCaption else { return false }
    guard self.varioDefaultMileage == object.varioDefaultMileage else { return false }
    guard self.varioDefaultPeriod == object.varioDefaultPeriod else { return false }
    guard self.varioDescription == object.varioDescription else { return false }
    guard self.varioTitle == object.varioTitle else { return false }
    return true
  }

  public static func == (lhs: VehicleOnlineProcessSettingsInfo, rhs: VehicleOnlineProcessSettingsInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
