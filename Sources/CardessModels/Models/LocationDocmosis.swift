//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LocationDocmosis: Codable, Equatable {
  public var address: String?
  public var addressLine1: String?
  public var baseUrl: String?
  public var city: String?
  public var countryCode: String?
  public var dealerLogoUrl: String?
  public var email: String?
  public var hasDealerLogo: Bool?
  public var id: String?
  public var lat: Double?
  public var lng: Double?
  public var locationSubTypes: [CommunicationLocationSubType]?
  public var name: String?
  public var phone: String?
  public var smsAlias: String?
  public var website: String?
  public var zip: String?

  public init(address: String?  = nil, addressLine1: String?  = nil, baseUrl: String?  = nil, city: String?  = nil, countryCode: String?  = nil, dealerLogoUrl: String?  = nil, email: String?  = nil, hasDealerLogo: Bool?  = nil, id: String?  = nil, lat: Double?  = nil, lng: Double?  = nil, locationSubTypes: [CommunicationLocationSubType]?  = nil, name: String?  = nil, phone: String?  = nil, smsAlias: String?  = nil, website: String?  = nil, zip: String?  = nil) {
    self.address = address
    self.addressLine1 = addressLine1
    self.baseUrl = baseUrl
    self.city = city
    self.countryCode = countryCode
    self.dealerLogoUrl = dealerLogoUrl
    self.email = email
    self.hasDealerLogo = hasDealerLogo
    self.id = id
    self.lat = lat
    self.lng = lng
    self.locationSubTypes = locationSubTypes
    self.name = name
    self.phone = phone
    self.smsAlias = smsAlias
    self.website = website
    self.zip = zip
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LocationDocmosis else { return false }
    guard self.address == object.address else { return false }
    guard self.addressLine1 == object.addressLine1 else { return false }
    guard self.baseUrl == object.baseUrl else { return false }
    guard self.city == object.city else { return false }
    guard self.countryCode == object.countryCode else { return false }
    guard self.dealerLogoUrl == object.dealerLogoUrl else { return false }
    guard self.email == object.email else { return false }
    guard self.hasDealerLogo == object.hasDealerLogo else { return false }
    guard self.id == object.id else { return false }
    guard self.lat == object.lat else { return false }
    guard self.lng == object.lng else { return false }
    guard self.locationSubTypes == object.locationSubTypes else { return false }
    guard self.name == object.name else { return false }
    guard self.phone == object.phone else { return false }
    guard self.smsAlias == object.smsAlias else { return false }
    guard self.website == object.website else { return false }
    guard self.zip == object.zip else { return false }
    return true
  }

  public static func == (lhs: LocationDocmosis, rhs: LocationDocmosis) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
