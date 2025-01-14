//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class RequestSellData: Codable, Equatable {
  public var allowEmail: Bool?
  public var allowMessaging: Bool?
  public var allowPhone: Bool?
  public var allowProfiling: Bool?
  public var allowSms: Bool?
  public var assignedToId: String?
  public var balloon: Double?
  public var calculations: [LeadVehicleCalculationInfo]?
  public var city: String?
  public var cityId: String?
  public var colourId: String?
  public var comment: String?
  public var companyName: String?
  public var contractEndDate: Date?
  public var contractStartDate: Date?
  public var countryId: String?
  public var creditPeriod: Double?
  public var dateOfBirth: Date?
  public var dealerDiscountRuleId: String?
  public var desiredMonthlyRateBrutto: Double?
  public var desiredMonthlyRateNetto: Double?
  public var drivingLicenseIssueDate: Date?
  public var drivingLicenseIssuedBy: String?
  public var drivingLicenseNumber: String?
  public var email: String?
  public var expectedAnnualMileage: Double?
  public var fingerPrint: String?
  public var firstName: String?
  public var id: String?
  public var idIssuedByCity: String?
  public var idIssuedByCityId: String?
  public var idNumber: String?
  public var initialRequest: CommunicationModelsEnumsInitialRequest?
  public var isBusinessCustomer: Bool?
  public var isInsurancePackageIncluded: Bool?
  public var isServicePackageIncluded: Bool?
  public var lastName: String?
  public var leadType: EnumsLeadType?
  public var locationId: String?
  public var mainLocationId: String?
  public var montlyPaymentAmount: Double?
  public var onlineProcessId: String?
  public var payment: CommunicationModelsEnumsTypeOfPayment?
  public var phoneNo: String?
  public var place: String?
  public var postalCode: String?
  public var preferredActivityId: String?
  public var preferredActivityType: EnumsActivityType?
  public var preferredEndDate: Date?
  public var preferredStartDate: Date?
  public var prepayedAmount: Double?
  public var prepayedPercent: Double?
  public var price: Double?
  public var requestType: EnumsRequestContactType?
  public var rimId: String?
  public var ruleId: String?
  public var salutation: String?
  public var selectedDealerId: String?
  public var source: CustomerDataEnumsLeadSource?
  public var street: String?
  public var tags: [MasterDataTagInfo]?
  public var tagsText: String?
  public var title: String?
  public var tradeInCaseId: String?
  public var upholsteryId: String?
  public var utmTags: String?
  public var vehicleId: String?
  public var vehicleInternalNumber: String?
  public var vin: String?
  public var website: String?

  public init(allowEmail: Bool?  = nil, allowMessaging: Bool?  = nil, allowPhone: Bool?  = nil, allowProfiling: Bool?  = nil, allowSms: Bool?  = nil, assignedToId: String? = nil, balloon: Double?  = nil, calculations: [LeadVehicleCalculationInfo]?  = nil, city: String?  = nil, cityId: String? = nil, colourId: String? = nil, comment: String?  = nil, companyName: String?  = nil, contractEndDate: Date? = nil, contractStartDate: Date? = nil, countryId: String? = nil, creditPeriod: Double?  = nil, dateOfBirth: Date? = nil, dealerDiscountRuleId: String? = nil, desiredMonthlyRateBrutto: Double?  = nil, desiredMonthlyRateNetto: Double?  = nil, drivingLicenseIssueDate: Date? = nil, drivingLicenseIssuedBy: String?  = nil, drivingLicenseNumber: String?  = nil, email: String?  = nil, expectedAnnualMileage: Double?  = nil, fingerPrint: String?  = nil, firstName: String?  = nil, id: String? = nil, idIssuedByCity: String?  = nil, idIssuedByCityId: String? = nil, idNumber: String?  = nil, initialRequest: CommunicationModelsEnumsInitialRequest?  = nil, isBusinessCustomer: Bool?  = nil, isInsurancePackageIncluded: Bool?  = nil, isServicePackageIncluded: Bool?  = nil, lastName: String?  = nil, leadType: EnumsLeadType?  = nil, locationId: String?  = nil, mainLocationId: String?  = nil, montlyPaymentAmount: Double?  = nil, onlineProcessId: String? = nil, payment: CommunicationModelsEnumsTypeOfPayment?  = nil, phoneNo: String?  = nil, place: String?  = nil, postalCode: String?  = nil, preferredActivityId: String? = nil, preferredActivityType: EnumsActivityType?  = nil, preferredEndDate: Date? = nil, preferredStartDate: Date? = nil, prepayedAmount: Double?  = nil, prepayedPercent: Double?  = nil, price: Double?  = nil, requestType: EnumsRequestContactType?  = nil, rimId: String? = nil, ruleId: String? = nil, salutation: String?  = nil, selectedDealerId: String?  = nil, source: CustomerDataEnumsLeadSource?  = nil, street: String?  = nil, tags: [MasterDataTagInfo]?  = nil, tagsText: String?  = nil, title: String?  = nil, tradeInCaseId: String?  = nil, upholsteryId: String? = nil, utmTags: String?  = nil, vehicleId: String? = nil, vehicleInternalNumber: String?  = nil, vin: String?  = nil, website: String?  = nil) {
    self.allowEmail = allowEmail
    self.allowMessaging = allowMessaging
    self.allowPhone = allowPhone
    self.allowProfiling = allowProfiling
    self.allowSms = allowSms
    self.assignedToId = assignedToId
    self.balloon = balloon
    self.calculations = calculations
    self.city = city
    self.cityId = cityId
    self.colourId = colourId
    self.comment = comment
    self.companyName = companyName
    self.contractEndDate = contractEndDate
    self.contractStartDate = contractStartDate
    self.countryId = countryId
    self.creditPeriod = creditPeriod
    self.dateOfBirth = dateOfBirth
    self.dealerDiscountRuleId = dealerDiscountRuleId
    self.desiredMonthlyRateBrutto = desiredMonthlyRateBrutto
    self.desiredMonthlyRateNetto = desiredMonthlyRateNetto
    self.drivingLicenseIssueDate = drivingLicenseIssueDate
    self.drivingLicenseIssuedBy = drivingLicenseIssuedBy
    self.drivingLicenseNumber = drivingLicenseNumber
    self.email = email
    self.expectedAnnualMileage = expectedAnnualMileage
    self.fingerPrint = fingerPrint
    self.firstName = firstName
    self.id = id
    self.idIssuedByCity = idIssuedByCity
    self.idIssuedByCityId = idIssuedByCityId
    self.idNumber = idNumber
    self.initialRequest = initialRequest
    self.isBusinessCustomer = isBusinessCustomer
    self.isInsurancePackageIncluded = isInsurancePackageIncluded
    self.isServicePackageIncluded = isServicePackageIncluded
    self.lastName = lastName
    self.leadType = leadType
    self.locationId = locationId
    self.mainLocationId = mainLocationId
    self.montlyPaymentAmount = montlyPaymentAmount
    self.onlineProcessId = onlineProcessId
    self.payment = payment
    self.phoneNo = phoneNo
    self.place = place
    self.postalCode = postalCode
    self.preferredActivityId = preferredActivityId
    self.preferredActivityType = preferredActivityType
    self.preferredEndDate = preferredEndDate
    self.preferredStartDate = preferredStartDate
    self.prepayedAmount = prepayedAmount
    self.prepayedPercent = prepayedPercent
    self.price = price
    self.requestType = requestType
    self.rimId = rimId
    self.ruleId = ruleId
    self.salutation = salutation
    self.selectedDealerId = selectedDealerId
    self.source = source
    self.street = street
    self.tags = tags
    self.tagsText = tagsText
    self.title = title
    self.tradeInCaseId = tradeInCaseId
    self.upholsteryId = upholsteryId
    self.utmTags = utmTags
    self.vehicleId = vehicleId
    self.vehicleInternalNumber = vehicleInternalNumber
    self.vin = vin
    self.website = website
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? RequestSellData else { return false }
    guard self.allowEmail == object.allowEmail else { return false }
    guard self.allowMessaging == object.allowMessaging else { return false }
    guard self.allowPhone == object.allowPhone else { return false }
    guard self.allowProfiling == object.allowProfiling else { return false }
    guard self.allowSms == object.allowSms else { return false }
    guard self.assignedToId == object.assignedToId else { return false }
    guard self.balloon == object.balloon else { return false }
    guard self.calculations == object.calculations else { return false }
    guard self.city == object.city else { return false }
    guard self.cityId == object.cityId else { return false }
    guard self.colourId == object.colourId else { return false }
    guard self.comment == object.comment else { return false }
    guard self.companyName == object.companyName else { return false }
    guard self.contractEndDate == object.contractEndDate else { return false }
    guard self.contractStartDate == object.contractStartDate else { return false }
    guard self.countryId == object.countryId else { return false }
    guard self.creditPeriod == object.creditPeriod else { return false }
    guard self.dateOfBirth == object.dateOfBirth else { return false }
    guard self.dealerDiscountRuleId == object.dealerDiscountRuleId else { return false }
    guard self.desiredMonthlyRateBrutto == object.desiredMonthlyRateBrutto else { return false }
    guard self.desiredMonthlyRateNetto == object.desiredMonthlyRateNetto else { return false }
    guard self.drivingLicenseIssueDate == object.drivingLicenseIssueDate else { return false }
    guard self.drivingLicenseIssuedBy == object.drivingLicenseIssuedBy else { return false }
    guard self.drivingLicenseNumber == object.drivingLicenseNumber else { return false }
    guard self.email == object.email else { return false }
    guard self.expectedAnnualMileage == object.expectedAnnualMileage else { return false }
    guard self.fingerPrint == object.fingerPrint else { return false }
    guard self.firstName == object.firstName else { return false }
    guard self.id == object.id else { return false }
    guard self.idIssuedByCity == object.idIssuedByCity else { return false }
    guard self.idIssuedByCityId == object.idIssuedByCityId else { return false }
    guard self.idNumber == object.idNumber else { return false }
    guard self.initialRequest == object.initialRequest else { return false }
    guard self.isBusinessCustomer == object.isBusinessCustomer else { return false }
    guard self.isInsurancePackageIncluded == object.isInsurancePackageIncluded else { return false }
    guard self.isServicePackageIncluded == object.isServicePackageIncluded else { return false }
    guard self.lastName == object.lastName else { return false }
    guard self.leadType == object.leadType else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.mainLocationId == object.mainLocationId else { return false }
    guard self.montlyPaymentAmount == object.montlyPaymentAmount else { return false }
    guard self.onlineProcessId == object.onlineProcessId else { return false }
    guard self.payment == object.payment else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.place == object.place else { return false }
    guard self.postalCode == object.postalCode else { return false }
    guard self.preferredActivityId == object.preferredActivityId else { return false }
    guard self.preferredActivityType == object.preferredActivityType else { return false }
    guard self.preferredEndDate == object.preferredEndDate else { return false }
    guard self.preferredStartDate == object.preferredStartDate else { return false }
    guard self.prepayedAmount == object.prepayedAmount else { return false }
    guard self.prepayedPercent == object.prepayedPercent else { return false }
    guard self.price == object.price else { return false }
    guard self.requestType == object.requestType else { return false }
    guard self.rimId == object.rimId else { return false }
    guard self.ruleId == object.ruleId else { return false }
    guard self.salutation == object.salutation else { return false }
    guard self.selectedDealerId == object.selectedDealerId else { return false }
    guard self.source == object.source else { return false }
    guard self.street == object.street else { return false }
    guard self.tags == object.tags else { return false }
    guard self.tagsText == object.tagsText else { return false }
    guard self.title == object.title else { return false }
    guard self.tradeInCaseId == object.tradeInCaseId else { return false }
    guard self.upholsteryId == object.upholsteryId else { return false }
    guard self.utmTags == object.utmTags else { return false }
    guard self.vehicleId == object.vehicleId else { return false }
    guard self.vehicleInternalNumber == object.vehicleInternalNumber else { return false }
    guard self.vin == object.vin else { return false }
    guard self.website == object.website else { return false }
    return true
  }

  public static func == (lhs: RequestSellData, rhs: RequestSellData) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
