//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeadObjectionInfo: Codable, Equatable {
  public var id: String?
  public var leadId: String?
  public var objection: ObjectionInfo?
  public var objectionId: String?

  public init(id: String? = nil, leadId: String? = nil, objection: ObjectionInfo?  = nil, objectionId: String? = nil) {
    self.id = id
    self.leadId = leadId
    self.objection = objection
    self.objectionId = objectionId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeadObjectionInfo else { return false }
    guard self.id == object.id else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.objection == object.objection else { return false }
    guard self.objectionId == object.objectionId else { return false }
    return true
  }

  public static func == (lhs: LeadObjectionInfo, rhs: LeadObjectionInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}