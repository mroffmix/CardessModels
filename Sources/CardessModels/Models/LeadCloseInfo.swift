//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class LeadCloseInfo: Codable, Equatable {
  public var closeReason: EnumsLeadCloseReason?
  public var comment: String?
  public var state: EnumsLeadStatus?

  public init(closeReason: EnumsLeadCloseReason?  = nil, comment: String?  = nil, state: EnumsLeadStatus?  = nil) {
    self.closeReason = closeReason
    self.comment = comment
    self.state = state
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? LeadCloseInfo else { return false }
    guard self.closeReason == object.closeReason else { return false }
    guard self.comment == object.comment else { return false }
    guard self.state == object.state else { return false }
    return true
  }

  public static func == (lhs: LeadCloseInfo, rhs: LeadCloseInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
