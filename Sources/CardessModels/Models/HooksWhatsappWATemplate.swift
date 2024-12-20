//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class HooksWhatsappWATemplate: Codable, Equatable {
  public var category: String?
  public var components: [HooksWhatsappComponent]?
  public var id: String?
  public var language: String?
  public var name: String?
  public var status: String?

  public init(category: String?  = nil, components: [HooksWhatsappComponent]?  = nil, id: String?  = nil, language: String?  = nil, name: String?  = nil, status: String?  = nil) {
    self.category = category
    self.components = components
    self.id = id
    self.language = language
    self.name = name
    self.status = status
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? HooksWhatsappWATemplate else { return false }
    guard self.category == object.category else { return false }
    guard self.components == object.components else { return false }
    guard self.id == object.id else { return false }
    guard self.language == object.language else { return false }
    guard self.name == object.name else { return false }
    guard self.status == object.status else { return false }
    return true
  }

  public static func == (lhs: HooksWhatsappWATemplate, rhs: HooksWhatsappWATemplate) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
