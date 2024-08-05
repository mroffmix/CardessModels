//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationTaxonomyType: Codable, Equatable {
  public var externalId: String?
  public var id: String?
  public var name: String?
  public var translations: [CommunicationTaxonomyTranslation]?

  public init(externalId: String?  = nil, id: String?  = nil, name: String?  = nil, translations: [CommunicationTaxonomyTranslation]?  = nil) {
    self.externalId = externalId
    self.id = id
    self.name = name
    self.translations = translations
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationTaxonomyType else { return false }
    guard self.externalId == object.externalId else { return false }
    guard self.id == object.id else { return false }
    guard self.name == object.name else { return false }
    guard self.translations == object.translations else { return false }
    return true
  }

  public static func == (lhs: CommunicationTaxonomyType, rhs: CommunicationTaxonomyType) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
