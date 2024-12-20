//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationServiceTemplate: Codable, Equatable {
  public var allowPersonalMessage: Bool?
  public var body: String?
  public var contentId: String?
  public var contentName: String?
  public var editUrl: String?
  public var entityId: String?
  public var id: String?
  public var languageCode: String?
  public var locationId: String?
  public var name: String?
  public var type: CommunicationServiceEnumsTemplateType?

  public init(allowPersonalMessage: Bool?  = nil, body: String?  = nil, contentId: String?  = nil, contentName: String?  = nil, editUrl: String?  = nil, entityId: String? = nil, id: String? = nil, languageCode: String?  = nil, locationId: String?  = nil, name: String?  = nil, type: CommunicationServiceEnumsTemplateType?  = nil) {
    self.allowPersonalMessage = allowPersonalMessage
    self.body = body
    self.contentId = contentId
    self.contentName = contentName
    self.editUrl = editUrl
    self.entityId = entityId
    self.id = id
    self.languageCode = languageCode
    self.locationId = locationId
    self.name = name
    self.type = type
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationServiceTemplate else { return false }
    guard self.allowPersonalMessage == object.allowPersonalMessage else { return false }
    guard self.body == object.body else { return false }
    guard self.contentId == object.contentId else { return false }
    guard self.contentName == object.contentName else { return false }
    guard self.editUrl == object.editUrl else { return false }
    guard self.entityId == object.entityId else { return false }
    guard self.id == object.id else { return false }
    guard self.languageCode == object.languageCode else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.name == object.name else { return false }
    guard self.type == object.type else { return false }
    return true
  }

  public static func == (lhs: CommunicationServiceTemplate, rhs: CommunicationServiceTemplate) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
