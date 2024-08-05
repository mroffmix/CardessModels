//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CustomerPortalConsentTextData: Codable, Equatable {
  public var fullText: String?
  public var id: String?
  public var locale: String?
  public var shortText: String?

  public init(fullText: String?  = nil, id: String? = nil, locale: String?  = nil, shortText: String?  = nil) {
    self.fullText = fullText
    self.id = id
    self.locale = locale
    self.shortText = shortText
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CustomerPortalConsentTextData else { return false }
    guard self.fullText == object.fullText else { return false }
    guard self.id == object.id else { return false }
    guard self.locale == object.locale else { return false }
    guard self.shortText == object.shortText else { return false }
    return true
  }

  public static func == (lhs: CustomerPortalConsentTextData, rhs: CustomerPortalConsentTextData) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
