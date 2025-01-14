//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ApplicationSettings: Codable, Equatable {
  public var asmGroupId: String?
  public var cardessServiceUrl: String?
  public var categories: [MasterDataEquipmentCategoryInfo]?
  public var customerPortalUrl: String?
  public var dateFormat: String?
  public var defaultCountry: MasterDataCountryInfo?
  public var defaultCurrencyCode: String?
  public var defaultLanguageCode: String?
  public var defaultLocationEmail: String?
  public var defaultState: String?
  public var endWorkingHour: Int?
  public var isFmadeClientConfigured: Bool?
  public var isWhatsAppEnabled: Bool?
  public var locationId: String?
  public var planAppointmentSettings: PlanAppointmentSettingsInfo?
  public var showVehiclesForTheLocationOnly: Bool?
  public var startWorkingHour: Int?
  public var timeFormat: String?
  public var timeZoneOffset: String?
  public var tradeinEnabled: Bool?
  public var twilioOutgoingEnabled: Bool?
  public var twilioPushUrl: String?

  public init(asmGroupId: String?  = nil, cardessServiceUrl: String?  = nil, categories: [MasterDataEquipmentCategoryInfo]?  = nil, customerPortalUrl: String?  = nil, dateFormat: String?  = nil, defaultCountry: MasterDataCountryInfo?  = nil, defaultCurrencyCode: String?  = nil, defaultLanguageCode: String?  = nil, defaultLocationEmail: String?  = nil, defaultState: String?  = nil, endWorkingHour: Int?  = nil, isFmadeClientConfigured: Bool?  = nil, isWhatsAppEnabled: Bool?  = nil, locationId: String?  = nil, planAppointmentSettings: PlanAppointmentSettingsInfo?  = nil, showVehiclesForTheLocationOnly: Bool?  = nil, startWorkingHour: Int?  = nil, timeFormat: String?  = nil, timeZoneOffset: String? = nil, tradeinEnabled: Bool?  = nil, twilioOutgoingEnabled: Bool?  = nil, twilioPushUrl: String?  = nil) {
    self.asmGroupId = asmGroupId
    self.cardessServiceUrl = cardessServiceUrl
    self.categories = categories
    self.customerPortalUrl = customerPortalUrl
    self.dateFormat = dateFormat
    self.defaultCountry = defaultCountry
    self.defaultCurrencyCode = defaultCurrencyCode
    self.defaultLanguageCode = defaultLanguageCode
    self.defaultLocationEmail = defaultLocationEmail
    self.defaultState = defaultState
    self.endWorkingHour = endWorkingHour
    self.isFmadeClientConfigured = isFmadeClientConfigured
    self.isWhatsAppEnabled = isWhatsAppEnabled
    self.locationId = locationId
    self.planAppointmentSettings = planAppointmentSettings
    self.showVehiclesForTheLocationOnly = showVehiclesForTheLocationOnly
    self.startWorkingHour = startWorkingHour
    self.timeFormat = timeFormat
    self.timeZoneOffset = timeZoneOffset
    self.tradeinEnabled = tradeinEnabled
    self.twilioOutgoingEnabled = twilioOutgoingEnabled
    self.twilioPushUrl = twilioPushUrl
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ApplicationSettings else { return false }
    guard self.asmGroupId == object.asmGroupId else { return false }
    guard self.cardessServiceUrl == object.cardessServiceUrl else { return false }
    guard self.categories == object.categories else { return false }
    guard self.customerPortalUrl == object.customerPortalUrl else { return false }
    guard self.dateFormat == object.dateFormat else { return false }
    guard self.defaultCountry == object.defaultCountry else { return false }
    guard self.defaultCurrencyCode == object.defaultCurrencyCode else { return false }
    guard self.defaultLanguageCode == object.defaultLanguageCode else { return false }
    guard self.defaultLocationEmail == object.defaultLocationEmail else { return false }
    guard self.defaultState == object.defaultState else { return false }
    guard self.endWorkingHour == object.endWorkingHour else { return false }
    guard self.isFmadeClientConfigured == object.isFmadeClientConfigured else { return false }
    guard self.isWhatsAppEnabled == object.isWhatsAppEnabled else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.planAppointmentSettings == object.planAppointmentSettings else { return false }
    guard self.showVehiclesForTheLocationOnly == object.showVehiclesForTheLocationOnly else { return false }
    guard self.startWorkingHour == object.startWorkingHour else { return false }
    guard self.timeFormat == object.timeFormat else { return false }
    guard self.timeZoneOffset == object.timeZoneOffset else { return false }
    guard self.tradeinEnabled == object.tradeinEnabled else { return false }
    guard self.twilioOutgoingEnabled == object.twilioOutgoingEnabled else { return false }
    guard self.twilioPushUrl == object.twilioPushUrl else { return false }
    return true
  }

  public static func == (lhs: ApplicationSettings, rhs: ApplicationSettings) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
