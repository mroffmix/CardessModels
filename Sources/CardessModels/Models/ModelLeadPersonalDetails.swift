//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelLeadPersonalDetails: Codable, Equatable {
  public var additionalIncomeAmount: Double?
  public var additionalOutgoingAmount: Double?
  public var area: String?
  public var bic: String?
  public var birthDate: Date?
  public var birthPlace: String?
  public var childrenAmount: Double?
  public var companyName: String?
  public var countryId: String?
  public var desiredDegree: String?
  public var detailsOfficeActivityPep: String?
  public var email: String?
  public var employerPlace: String?
  public var employerPostCode: String?
  public var employmentType: EnumsPersonEmploymentType?
  public var firstName: String?
  public var firstNamePep: String?
  public var fixedTermUntilDate: Date?
  public var fullName: String?
  public var hasAdditionalIncome: Bool?
  public var hasAdditionalOutgoings: Bool?
  public var hasDependentChildren: Bool?
  public var hasMonthlyCreditPayment: Bool?
  public var hasMortgage: Bool?
  public var hasOtherNationalityResidencePermit: Bool?
  public var hasPartnerIncome: Bool?
  public var houseNo: String?
  public var iban: String?
  public var id: String?
  public var isActingInOwnEconomicInterest: Bool?
  public var isEmploymentForAFixedTerm: Bool?
  public var isInProbationPeriod: Bool?
  public var isNotActingOnMyOwnInitiative: Bool?
  public var isNotPep: Bool?
  public var isPayingWarmRent: Bool?
  public var isPep: Bool?
  public var isReceivingFunding: Bool?
  public var isUsingOwnedProperty: Bool?
  public var lastName: String?
  public var lastNamePep: String?
  public var leadId: String?
  public var lessThanThreeYears: Bool?
  public var livingSituation: EnumsPersonLivingSituation?
  public var monthIncome1: Double?
  public var monthIncome2: Double?
  public var monthIncome3: Double?
  public var monthlyCreditPaymentAmount: Double?
  public var monthlyWarmRentPayment: Double?
  public var mortgageAmount: Double?
  public var nationality: String?
  public var otherNationalityName: String?
  public var otherNationalityValidUntil: Date?
  public var partnerIncome: Double?
  public var personAvailability: EnumsPersonAvailability?
  public var personAvailabilityTime: EnumsPersonAvailabilityTime?
  public var phoneNo: String?
  public var postCode: String?
  public var previousAddress: String?
  public var probationPeriodUntilDate: Date?
  public var receivingFundingAmount: Double?
  public var relationshipPep: String?
  public var relationshipStatus: EnumsPersonRelationshipStatus?
  public var since: Date?
  public var street: String?
  public var title: EnumsPersonTitle?
  public var to: Date?

  public init(additionalIncomeAmount: Double?  = nil, additionalOutgoingAmount: Double?  = nil, area: String?  = nil, bic: String?  = nil, birthDate: Date? = nil, birthPlace: String?  = nil, childrenAmount: Double?  = nil, companyName: String?  = nil, countryId: String? = nil, desiredDegree: String?  = nil, detailsOfficeActivityPep: String?  = nil, email: String?  = nil, employerPlace: String?  = nil, employerPostCode: String?  = nil, employmentType: EnumsPersonEmploymentType?  = nil, firstName: String?  = nil, firstNamePep: String?  = nil, fixedTermUntilDate: Date? = nil, fullName: String?  = nil, hasAdditionalIncome: Bool?  = nil, hasAdditionalOutgoings: Bool?  = nil, hasDependentChildren: Bool?  = nil, hasMonthlyCreditPayment: Bool?  = nil, hasMortgage: Bool?  = nil, hasOtherNationalityResidencePermit: Bool?  = nil, hasPartnerIncome: Bool?  = nil, houseNo: String?  = nil, iban: String?  = nil, id: String? = nil, isActingInOwnEconomicInterest: Bool?  = nil, isEmploymentForAFixedTerm: Bool?  = nil, isInProbationPeriod: Bool?  = nil, isNotActingOnMyOwnInitiative: Bool?  = nil, isNotPep: Bool?  = nil, isPayingWarmRent: Bool?  = nil, isPep: Bool?  = nil, isReceivingFunding: Bool?  = nil, isUsingOwnedProperty: Bool?  = nil, lastName: String?  = nil, lastNamePep: String?  = nil, leadId: String? = nil, lessThanThreeYears: Bool?  = nil, livingSituation: EnumsPersonLivingSituation?  = nil, monthIncome1: Double?  = nil, monthIncome2: Double?  = nil, monthIncome3: Double?  = nil, monthlyCreditPaymentAmount: Double?  = nil, monthlyWarmRentPayment: Double?  = nil, mortgageAmount: Double?  = nil, nationality: String?  = nil, otherNationalityName: String?  = nil, otherNationalityValidUntil: Date? = nil, partnerIncome: Double?  = nil, personAvailability: EnumsPersonAvailability?  = nil, personAvailabilityTime: EnumsPersonAvailabilityTime?  = nil, phoneNo: String?  = nil, postCode: String?  = nil, previousAddress: String?  = nil, probationPeriodUntilDate: Date? = nil, receivingFundingAmount: Double?  = nil, relationshipPep: String?  = nil, relationshipStatus: EnumsPersonRelationshipStatus?  = nil, since: Date? = nil, street: String?  = nil, title: EnumsPersonTitle?  = nil, to: Date? = nil) {
    self.additionalIncomeAmount = additionalIncomeAmount
    self.additionalOutgoingAmount = additionalOutgoingAmount
    self.area = area
    self.bic = bic
    self.birthDate = birthDate
    self.birthPlace = birthPlace
    self.childrenAmount = childrenAmount
    self.companyName = companyName
    self.countryId = countryId
    self.desiredDegree = desiredDegree
    self.detailsOfficeActivityPep = detailsOfficeActivityPep
    self.email = email
    self.employerPlace = employerPlace
    self.employerPostCode = employerPostCode
    self.employmentType = employmentType
    self.firstName = firstName
    self.firstNamePep = firstNamePep
    self.fixedTermUntilDate = fixedTermUntilDate
    self.fullName = fullName
    self.hasAdditionalIncome = hasAdditionalIncome
    self.hasAdditionalOutgoings = hasAdditionalOutgoings
    self.hasDependentChildren = hasDependentChildren
    self.hasMonthlyCreditPayment = hasMonthlyCreditPayment
    self.hasMortgage = hasMortgage
    self.hasOtherNationalityResidencePermit = hasOtherNationalityResidencePermit
    self.hasPartnerIncome = hasPartnerIncome
    self.houseNo = houseNo
    self.iban = iban
    self.id = id
    self.isActingInOwnEconomicInterest = isActingInOwnEconomicInterest
    self.isEmploymentForAFixedTerm = isEmploymentForAFixedTerm
    self.isInProbationPeriod = isInProbationPeriod
    self.isNotActingOnMyOwnInitiative = isNotActingOnMyOwnInitiative
    self.isNotPep = isNotPep
    self.isPayingWarmRent = isPayingWarmRent
    self.isPep = isPep
    self.isReceivingFunding = isReceivingFunding
    self.isUsingOwnedProperty = isUsingOwnedProperty
    self.lastName = lastName
    self.lastNamePep = lastNamePep
    self.leadId = leadId
    self.lessThanThreeYears = lessThanThreeYears
    self.livingSituation = livingSituation
    self.monthIncome1 = monthIncome1
    self.monthIncome2 = monthIncome2
    self.monthIncome3 = monthIncome3
    self.monthlyCreditPaymentAmount = monthlyCreditPaymentAmount
    self.monthlyWarmRentPayment = monthlyWarmRentPayment
    self.mortgageAmount = mortgageAmount
    self.nationality = nationality
    self.otherNationalityName = otherNationalityName
    self.otherNationalityValidUntil = otherNationalityValidUntil
    self.partnerIncome = partnerIncome
    self.personAvailability = personAvailability
    self.personAvailabilityTime = personAvailabilityTime
    self.phoneNo = phoneNo
    self.postCode = postCode
    self.previousAddress = previousAddress
    self.probationPeriodUntilDate = probationPeriodUntilDate
    self.receivingFundingAmount = receivingFundingAmount
    self.relationshipPep = relationshipPep
    self.relationshipStatus = relationshipStatus
    self.since = since
    self.street = street
    self.title = title
    self.to = to
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelLeadPersonalDetails else { return false }
    guard self.additionalIncomeAmount == object.additionalIncomeAmount else { return false }
    guard self.additionalOutgoingAmount == object.additionalOutgoingAmount else { return false }
    guard self.area == object.area else { return false }
    guard self.bic == object.bic else { return false }
    guard self.birthDate == object.birthDate else { return false }
    guard self.birthPlace == object.birthPlace else { return false }
    guard self.childrenAmount == object.childrenAmount else { return false }
    guard self.companyName == object.companyName else { return false }
    guard self.countryId == object.countryId else { return false }
    guard self.desiredDegree == object.desiredDegree else { return false }
    guard self.detailsOfficeActivityPep == object.detailsOfficeActivityPep else { return false }
    guard self.email == object.email else { return false }
    guard self.employerPlace == object.employerPlace else { return false }
    guard self.employerPostCode == object.employerPostCode else { return false }
    guard self.employmentType == object.employmentType else { return false }
    guard self.firstName == object.firstName else { return false }
    guard self.firstNamePep == object.firstNamePep else { return false }
    guard self.fixedTermUntilDate == object.fixedTermUntilDate else { return false }
    guard self.fullName == object.fullName else { return false }
    guard self.hasAdditionalIncome == object.hasAdditionalIncome else { return false }
    guard self.hasAdditionalOutgoings == object.hasAdditionalOutgoings else { return false }
    guard self.hasDependentChildren == object.hasDependentChildren else { return false }
    guard self.hasMonthlyCreditPayment == object.hasMonthlyCreditPayment else { return false }
    guard self.hasMortgage == object.hasMortgage else { return false }
    guard self.hasOtherNationalityResidencePermit == object.hasOtherNationalityResidencePermit else { return false }
    guard self.hasPartnerIncome == object.hasPartnerIncome else { return false }
    guard self.houseNo == object.houseNo else { return false }
    guard self.iban == object.iban else { return false }
    guard self.id == object.id else { return false }
    guard self.isActingInOwnEconomicInterest == object.isActingInOwnEconomicInterest else { return false }
    guard self.isEmploymentForAFixedTerm == object.isEmploymentForAFixedTerm else { return false }
    guard self.isInProbationPeriod == object.isInProbationPeriod else { return false }
    guard self.isNotActingOnMyOwnInitiative == object.isNotActingOnMyOwnInitiative else { return false }
    guard self.isNotPep == object.isNotPep else { return false }
    guard self.isPayingWarmRent == object.isPayingWarmRent else { return false }
    guard self.isPep == object.isPep else { return false }
    guard self.isReceivingFunding == object.isReceivingFunding else { return false }
    guard self.isUsingOwnedProperty == object.isUsingOwnedProperty else { return false }
    guard self.lastName == object.lastName else { return false }
    guard self.lastNamePep == object.lastNamePep else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.lessThanThreeYears == object.lessThanThreeYears else { return false }
    guard self.livingSituation == object.livingSituation else { return false }
    guard self.monthIncome1 == object.monthIncome1 else { return false }
    guard self.monthIncome2 == object.monthIncome2 else { return false }
    guard self.monthIncome3 == object.monthIncome3 else { return false }
    guard self.monthlyCreditPaymentAmount == object.monthlyCreditPaymentAmount else { return false }
    guard self.monthlyWarmRentPayment == object.monthlyWarmRentPayment else { return false }
    guard self.mortgageAmount == object.mortgageAmount else { return false }
    guard self.nationality == object.nationality else { return false }
    guard self.otherNationalityName == object.otherNationalityName else { return false }
    guard self.otherNationalityValidUntil == object.otherNationalityValidUntil else { return false }
    guard self.partnerIncome == object.partnerIncome else { return false }
    guard self.personAvailability == object.personAvailability else { return false }
    guard self.personAvailabilityTime == object.personAvailabilityTime else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.postCode == object.postCode else { return false }
    guard self.previousAddress == object.previousAddress else { return false }
    guard self.probationPeriodUntilDate == object.probationPeriodUntilDate else { return false }
    guard self.receivingFundingAmount == object.receivingFundingAmount else { return false }
    guard self.relationshipPep == object.relationshipPep else { return false }
    guard self.relationshipStatus == object.relationshipStatus else { return false }
    guard self.since == object.since else { return false }
    guard self.street == object.street else { return false }
    guard self.title == object.title else { return false }
    guard self.to == object.to else { return false }
    return true
  }

  public static func == (lhs: ModelLeadPersonalDetails, rhs: ModelLeadPersonalDetails) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
