//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ResourceBookingInfo: Codable, Equatable {
  public var comment: String?
  public var endTime: Date?
  public var id: String?
  public var locationId: String?
  public var resourceId: String?
  public var startTime: Date?

  public init(comment: String?  = nil, endTime: Date? = nil, id: String? = nil, locationId: String?  = nil, resourceId: String? = nil, startTime: Date? = nil) {
    self.comment = comment
    self.endTime = endTime
    self.id = id
    self.locationId = locationId
    self.resourceId = resourceId
    self.startTime = startTime
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ResourceBookingInfo else { return false }
    guard self.comment == object.comment else { return false }
    guard self.endTime == object.endTime else { return false }
    guard self.id == object.id else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.resourceId == object.resourceId else { return false }
    guard self.startTime == object.startTime else { return false }
    return true
  }

  public static func == (lhs: ResourceBookingInfo, rhs: ResourceBookingInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}