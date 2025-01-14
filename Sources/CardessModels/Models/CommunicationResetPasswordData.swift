//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationResetPasswordData: Codable, Equatable {
  public var countryCode: String?
  public var datCustomerNumber: String?
  public var languageCode: String?
  public var redirectPage: String?
  public var username: String?

  public init(countryCode: String?  = nil, datCustomerNumber: String?  = nil, languageCode: String?  = nil, redirectPage: String?  = nil, username: String?  = nil) {
    self.countryCode = countryCode
    self.datCustomerNumber = datCustomerNumber
    self.languageCode = languageCode
    self.redirectPage = redirectPage
    self.username = username
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationResetPasswordData else { return false }
    guard self.countryCode == object.countryCode else { return false }
    guard self.datCustomerNumber == object.datCustomerNumber else { return false }
    guard self.languageCode == object.languageCode else { return false }
    guard self.redirectPage == object.redirectPage else { return false }
    guard self.username == object.username else { return false }
    return true
  }

  public static func == (lhs: CommunicationResetPasswordData, rhs: CommunicationResetPasswordData) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}