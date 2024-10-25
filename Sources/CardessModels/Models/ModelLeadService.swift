//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ModelLeadService: Codable, Equatable {
  public var code: String?
  public var description: String?
  public var id: String?
  public var lead: ModelLead?
  public var leadId: String?
  public var price: Double?
  public var selected: Bool?
  public var service: ModelService?
  public var serviceId: String?
  public var title: String?

  public init(code: String?  = nil, description: String?  = nil, id: String? = nil, lead: ModelLead?  = nil, leadId: String? = nil, price: Double?  = nil, selected: Bool?  = nil, service: ModelService?  = nil, serviceId: String? = nil, title: String?  = nil) {
    self.code = code
    self.description = description
    self.id = id
    self.lead = lead
    self.leadId = leadId
    self.price = price
    self.selected = selected
    self.service = service
    self.serviceId = serviceId
    self.title = title
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ModelLeadService else { return false }
    guard self.code == object.code else { return false }
    guard self.description == object.description else { return false }
    guard self.id == object.id else { return false }
    guard self.lead == object.lead else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.price == object.price else { return false }
    guard self.selected == object.selected else { return false }
    guard self.service == object.service else { return false }
    guard self.serviceId == object.serviceId else { return false }
    guard self.title == object.title else { return false }
    return true
  }

  public static func == (lhs: ModelLeadService, rhs: ModelLeadService) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
