//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class AnalyticsServiceActivityTypeStatisticsData: Codable, Equatable {
  public var activityId: String?
  public var duration: Double?
  public var leadId: String?
  public var rowId: String?
  public var rowName: String?
  public var type: EnumsActivityType?

  public init(activityId: String? = nil, duration: Double?  = nil, leadId: String? = nil, rowId: String?  = nil, rowName: String?  = nil, type: EnumsActivityType?  = nil) {
    self.activityId = activityId
    self.duration = duration
    self.leadId = leadId
    self.rowId = rowId
    self.rowName = rowName
    self.type = type
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? AnalyticsServiceActivityTypeStatisticsData else { return false }
    guard self.activityId == object.activityId else { return false }
    guard self.duration == object.duration else { return false }
    guard self.leadId == object.leadId else { return false }
    guard self.rowId == object.rowId else { return false }
    guard self.rowName == object.rowName else { return false }
    guard self.type == object.type else { return false }
    return true
  }

  public static func == (lhs: AnalyticsServiceActivityTypeStatisticsData, rhs: AnalyticsServiceActivityTypeStatisticsData) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
