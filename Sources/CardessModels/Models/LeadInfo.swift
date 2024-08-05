//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeadInfo: Codable, Equatable {
  public typealias ID = String
  public var activitiesCount: Int?
  public var address: String?
  public var allowEmail: Bool?
  public var allowMessaging: Bool?
  public var allowPhone: Bool?
  public var allowProfiling: Bool?
  public var allowSms: Bool?
  public var budget: Double?
  public var carState: EnumsCarState?
  public var ccvId: Int?
  public var city: String?
  public var cityId: String?
  public var closeReason: EnumsLeadCloseReason?
  public var comment: String?
  public var communicationState: EnumsEventType?
  public var companyName: String?
  public var countryId: String?
  public var createdOn: Date?
  public var crmExternalCustomerID: String?
  public var currentCar: String?
  public var currentCarFinanced: Bool?
  public var currentCarFinancingEndDate: Date?
  public var currentCarRegistrationDate: Date?
  public var currentVehicleLicensePlate: String?
  public var currentVehicleMake: String?
  public var currentVehicleMileage: Int?
  public var currentVehicleModel: String?
  public var currentVehicleVin: String?
  public var currentVehicles: [CustomerDataCustomerCurrentVehicleInfo]?
  public var customerType: Bool?
  public var dateOfBirth: Date?
  public var drivingLicenseIssueDate: Date?
  public var drivingLicenseIssuedBy: String?
  public var drivingLicenseNumber: String?
  public var email: String?
  public var externalCustomerID: String?
  public var externalId: String?
  public var externalUrl: String?
  public var financingType: EnumsFinancingType?
  public var firstName: String?
  public var id: String?
  public var idIssuedByCity: String?
  public var idIssuedByCityId: String?
  public var idNumber: String?
  public var importSource: EnumsImportLeadSource?
  public var initialRequest: CommunicationModelsEnumsInitialRequest?
  public var lastName: String?
  public var leadMainTriggerType: EnumsEngageTriggerType?
  public var leadServices: [LeadServiceInfo]?
  public var leadType: EnumsLeadType?
  public var leadVehicles: [LeadVehicleInfo]?
  public var leasePeriod: Int?
  public var locationToLead: [String: ID]?
  public var mileageTo: Int?
  public var mileageYearly: Int?
  public var modifiedOn: Date?
  public var montlyPaymentAmount: Double?
  public var openActivitiesCount: Int?
  public var personalDetails: [LeadPersonalDetailsInfo]?
  public var personalDetailsDocuments: [LeadPersonalDetailsDocumentInfo]?
  public var personalizedMessage: String?
  public var phoneCarrierType: EnumsCarrierType?
  public var phoneNo: String?
  public var phoneNoSecondary: String?
  public var pipelinePhase: CommunicationModelsEnumsLeadPipelinePhase?
  public var pipelinePhaseStartDate: Date?
  public var postalCode: String?
  public var prepaymentAmount: Double?
  public var productionYearFrom: Int?
  public var raiting: Int?
  public var remoteConsultingId: String?
  public var responsiblePersonId: String?
  public var responsiblePersonName: String?
  public var salutation: String?
  public var source: CustomerDataEnumsLeadSource?
  public var state: EnumsLeadStatus?
  public var stockVehiclesOnly: Bool?
  public var street: String?
  public var tags: [MasterDataTagInfo]?
  public var title: String?
  public var tradeInCaseId: String?
  public var tradeInRequested: Bool?
  public var utmTags: String?
  public var vehicleStatus: VehicleDataEnumsVehicleStatus?
  public var website: String?

  public init(activitiesCount: Int?  = nil, address: String?  = nil, allowEmail: Bool?  = nil, allowMessaging: Bool?  = nil, allowPhone: Bool?  = nil, allowProfiling: Bool?  = nil, allowSms: Bool?  = nil, budget: Double?  = nil, carState: EnumsCarState?  = nil, ccvId: Int?  = nil, city: String?  = nil, cityId: String? = nil, closeReason: EnumsLeadCloseReason?  = nil, comment: String?  = nil, communicationState: EnumsEventType?  = nil, companyName: String?  = nil, countryId: String? = nil, createdOn: Date? = nil, crmExternalCustomerID: String?  = nil, currentCar: String?  = nil, currentCarFinanced: Bool?  = nil, currentCarFinancingEndDate: Date? = nil, currentCarRegistrationDate: Date? = nil, currentVehicleLicensePlate: String?  = nil, currentVehicleMake: String?  = nil, currentVehicleMileage: Int?  = nil, currentVehicleModel: String?  = nil, currentVehicleVin: String?  = nil, currentVehicles: [CustomerDataCustomerCurrentVehicleInfo]?  = nil, customerType: Bool?  = nil, dateOfBirth: Date? = nil, drivingLicenseIssueDate: Date? = nil, drivingLicenseIssuedBy: String?  = nil, drivingLicenseNumber: String?  = nil, email: String?  = nil, externalCustomerID: String?  = nil, externalId: String?  = nil, externalUrl: String?  = nil, financingType: EnumsFinancingType?  = nil, firstName: String?  = nil, id: String? = nil, idIssuedByCity: String?  = nil, idIssuedByCityId: String? = nil, idNumber: String?  = nil, importSource: EnumsImportLeadSource?  = nil, initialRequest: CommunicationModelsEnumsInitialRequest?  = nil, lastName: String?  = nil, leadMainTriggerType: EnumsEngageTriggerType?  = nil, leadServices: [LeadServiceInfo]?  = nil, leadType: EnumsLeadType?  = nil, leadVehicles: [LeadVehicleInfo]?  = nil, leasePeriod: Int?  = nil, locationToLead: [String: ID]?  = nil, mileageTo: Int?  = nil, mileageYearly: Int?  = nil, modifiedOn: Date? = nil, montlyPaymentAmount: Double?  = nil, openActivitiesCount: Int?  = nil, personalDetails: [LeadPersonalDetailsInfo]?  = nil, personalDetailsDocuments: [LeadPersonalDetailsDocumentInfo]?  = nil, personalizedMessage: String?  = nil, phoneCarrierType: EnumsCarrierType?  = nil, phoneNo: String?  = nil, phoneNoSecondary: String?  = nil, pipelinePhase: CommunicationModelsEnumsLeadPipelinePhase?  = nil, pipelinePhaseStartDate: Date? = nil, postalCode: String?  = nil, prepaymentAmount: Double?  = nil, productionYearFrom: Int?  = nil, raiting: Int?  = nil, remoteConsultingId: String?  = nil, responsiblePersonId: String? = nil, responsiblePersonName: String?  = nil, salutation: String?  = nil, source: CustomerDataEnumsLeadSource?  = nil, state: EnumsLeadStatus?  = nil, stockVehiclesOnly: Bool?  = nil, street: String?  = nil, tags: [MasterDataTagInfo]?  = nil, title: String?  = nil, tradeInCaseId: String?  = nil, tradeInRequested: Bool?  = nil, utmTags: String?  = nil, vehicleStatus: VehicleDataEnumsVehicleStatus?  = nil, website: String?  = nil) {
    self.activitiesCount = activitiesCount
    self.address = address
    self.allowEmail = allowEmail
    self.allowMessaging = allowMessaging
    self.allowPhone = allowPhone
    self.allowProfiling = allowProfiling
    self.allowSms = allowSms
    self.budget = budget
    self.carState = carState
    self.ccvId = ccvId
    self.city = city
    self.cityId = cityId
    self.closeReason = closeReason
    self.comment = comment
    self.communicationState = communicationState
    self.companyName = companyName
    self.countryId = countryId
    self.createdOn = createdOn
    self.crmExternalCustomerID = crmExternalCustomerID
    self.currentCar = currentCar
    self.currentCarFinanced = currentCarFinanced
    self.currentCarFinancingEndDate = currentCarFinancingEndDate
    self.currentCarRegistrationDate = currentCarRegistrationDate
    self.currentVehicleLicensePlate = currentVehicleLicensePlate
    self.currentVehicleMake = currentVehicleMake
    self.currentVehicleMileage = currentVehicleMileage
    self.currentVehicleModel = currentVehicleModel
    self.currentVehicleVin = currentVehicleVin
    self.currentVehicles = currentVehicles
    self.customerType = customerType
    self.dateOfBirth = dateOfBirth
    self.drivingLicenseIssueDate = drivingLicenseIssueDate
    self.drivingLicenseIssuedBy = drivingLicenseIssuedBy
    self.drivingLicenseNumber = drivingLicenseNumber
    self.email = email
    self.externalCustomerID = externalCustomerID
    self.externalId = externalId
    self.externalUrl = externalUrl
    self.financingType = financingType
    self.firstName = firstName
    self.id = id
    self.idIssuedByCity = idIssuedByCity
    self.idIssuedByCityId = idIssuedByCityId
    self.idNumber = idNumber
    self.importSource = importSource
    self.initialRequest = initialRequest
    self.lastName = lastName
    self.leadMainTriggerType = leadMainTriggerType
    self.leadServices = leadServices
    self.leadType = leadType
    self.leadVehicles = leadVehicles
    self.leasePeriod = leasePeriod
    self.locationToLead = locationToLead
    self.mileageTo = mileageTo
    self.mileageYearly = mileageYearly
    self.modifiedOn = modifiedOn
    self.montlyPaymentAmount = montlyPaymentAmount
    self.openActivitiesCount = openActivitiesCount
    self.personalDetails = personalDetails
    self.personalDetailsDocuments = personalDetailsDocuments
    self.personalizedMessage = personalizedMessage
    self.phoneCarrierType = phoneCarrierType
    self.phoneNo = phoneNo
    self.phoneNoSecondary = phoneNoSecondary
    self.pipelinePhase = pipelinePhase
    self.pipelinePhaseStartDate = pipelinePhaseStartDate
    self.postalCode = postalCode
    self.prepaymentAmount = prepaymentAmount
    self.productionYearFrom = productionYearFrom
    self.raiting = raiting
    self.remoteConsultingId = remoteConsultingId
    self.responsiblePersonId = responsiblePersonId
    self.responsiblePersonName = responsiblePersonName
    self.salutation = salutation
    self.source = source
    self.state = state
    self.stockVehiclesOnly = stockVehiclesOnly
    self.street = street
    self.tags = tags
    self.title = title
    self.tradeInCaseId = tradeInCaseId
    self.tradeInRequested = tradeInRequested
    self.utmTags = utmTags
    self.vehicleStatus = vehicleStatus
    self.website = website
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeadInfo else { return false }
    guard self.activitiesCount == object.activitiesCount else { return false }
    guard self.address == object.address else { return false }
    guard self.allowEmail == object.allowEmail else { return false }
    guard self.allowMessaging == object.allowMessaging else { return false }
    guard self.allowPhone == object.allowPhone else { return false }
    guard self.allowProfiling == object.allowProfiling else { return false }
    guard self.allowSms == object.allowSms else { return false }
    guard self.budget == object.budget else { return false }
    guard self.carState == object.carState else { return false }
    guard self.ccvId == object.ccvId else { return false }
    guard self.city == object.city else { return false }
    guard self.cityId == object.cityId else { return false }
    guard self.closeReason == object.closeReason else { return false }
    guard self.comment == object.comment else { return false }
    guard self.communicationState == object.communicationState else { return false }
    guard self.companyName == object.companyName else { return false }
    guard self.countryId == object.countryId else { return false }
    guard self.createdOn == object.createdOn else { return false }
    guard self.crmExternalCustomerID == object.crmExternalCustomerID else { return false }
    guard self.currentCar == object.currentCar else { return false }
    guard self.currentCarFinanced == object.currentCarFinanced else { return false }
    guard self.currentCarFinancingEndDate == object.currentCarFinancingEndDate else { return false }
    guard self.currentCarRegistrationDate == object.currentCarRegistrationDate else { return false }
    guard self.currentVehicleLicensePlate == object.currentVehicleLicensePlate else { return false }
    guard self.currentVehicleMake == object.currentVehicleMake else { return false }
    guard self.currentVehicleMileage == object.currentVehicleMileage else { return false }
    guard self.currentVehicleModel == object.currentVehicleModel else { return false }
    guard self.currentVehicleVin == object.currentVehicleVin else { return false }
    guard self.currentVehicles == object.currentVehicles else { return false }
    guard self.customerType == object.customerType else { return false }
    guard self.dateOfBirth == object.dateOfBirth else { return false }
    guard self.drivingLicenseIssueDate == object.drivingLicenseIssueDate else { return false }
    guard self.drivingLicenseIssuedBy == object.drivingLicenseIssuedBy else { return false }
    guard self.drivingLicenseNumber == object.drivingLicenseNumber else { return false }
    guard self.email == object.email else { return false }
    guard self.externalCustomerID == object.externalCustomerID else { return false }
    guard self.externalId == object.externalId else { return false }
    guard self.externalUrl == object.externalUrl else { return false }
    guard self.financingType == object.financingType else { return false }
    guard self.firstName == object.firstName else { return false }
    guard self.id == object.id else { return false }
    guard self.idIssuedByCity == object.idIssuedByCity else { return false }
    guard self.idIssuedByCityId == object.idIssuedByCityId else { return false }
    guard self.idNumber == object.idNumber else { return false }
    guard self.importSource == object.importSource else { return false }
    guard self.initialRequest == object.initialRequest else { return false }
    guard self.lastName == object.lastName else { return false }
    guard self.leadMainTriggerType == object.leadMainTriggerType else { return false }
    guard self.leadServices == object.leadServices else { return false }
    guard self.leadType == object.leadType else { return false }
    guard self.leadVehicles == object.leadVehicles else { return false }
    guard self.leasePeriod == object.leasePeriod else { return false }
    guard self.locationToLead == object.locationToLead else { return false }
    guard self.mileageTo == object.mileageTo else { return false }
    guard self.mileageYearly == object.mileageYearly else { return false }
    guard self.modifiedOn == object.modifiedOn else { return false }
    guard self.montlyPaymentAmount == object.montlyPaymentAmount else { return false }
    guard self.openActivitiesCount == object.openActivitiesCount else { return false }
    guard self.personalDetails == object.personalDetails else { return false }
    guard self.personalDetailsDocuments == object.personalDetailsDocuments else { return false }
    guard self.personalizedMessage == object.personalizedMessage else { return false }
    guard self.phoneCarrierType == object.phoneCarrierType else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.phoneNoSecondary == object.phoneNoSecondary else { return false }
    guard self.pipelinePhase == object.pipelinePhase else { return false }
    guard self.pipelinePhaseStartDate == object.pipelinePhaseStartDate else { return false }
    guard self.postalCode == object.postalCode else { return false }
    guard self.prepaymentAmount == object.prepaymentAmount else { return false }
    guard self.productionYearFrom == object.productionYearFrom else { return false }
    guard self.raiting == object.raiting else { return false }
    guard self.remoteConsultingId == object.remoteConsultingId else { return false }
    guard self.responsiblePersonId == object.responsiblePersonId else { return false }
    guard self.responsiblePersonName == object.responsiblePersonName else { return false }
    guard self.salutation == object.salutation else { return false }
    guard self.source == object.source else { return false }
    guard self.state == object.state else { return false }
    guard self.stockVehiclesOnly == object.stockVehiclesOnly else { return false }
    guard self.street == object.street else { return false }
    guard self.tags == object.tags else { return false }
    guard self.title == object.title else { return false }
    guard self.tradeInCaseId == object.tradeInCaseId else { return false }
    guard self.tradeInRequested == object.tradeInRequested else { return false }
    guard self.utmTags == object.utmTags else { return false }
    guard self.vehicleStatus == object.vehicleStatus else { return false }
    guard self.website == object.website else { return false }
    return true
  }

  public static func == (lhs: LeadInfo, rhs: LeadInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
