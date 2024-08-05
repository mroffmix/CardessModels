//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class PlanAppointmentSettingsInfo: Codable, Equatable {
  public var daysOfWeek: [Int]?
  public var enabled: Bool?
  public var endHour: Int?
  public var maxDaysAhead: Int?
  public var slotSizeMinutes: Int?
  public var slotStepMinutes: Int?
  public var startHour: Int?

  public init(daysOfWeek: [Int]?  = nil, enabled: Bool?  = nil, endHour: Int?  = nil, maxDaysAhead: Int?  = nil, slotSizeMinutes: Int?  = nil, slotStepMinutes: Int?  = nil, startHour: Int?  = nil) {
    self.daysOfWeek = daysOfWeek
    self.enabled = enabled
    self.endHour = endHour
    self.maxDaysAhead = maxDaysAhead
    self.slotSizeMinutes = slotSizeMinutes
    self.slotStepMinutes = slotStepMinutes
    self.startHour = startHour
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? PlanAppointmentSettingsInfo else { return false }
    guard self.daysOfWeek == object.daysOfWeek else { return false }
    guard self.enabled == object.enabled else { return false }
    guard self.endHour == object.endHour else { return false }
    guard self.maxDaysAhead == object.maxDaysAhead else { return false }
    guard self.slotSizeMinutes == object.slotSizeMinutes else { return false }
    guard self.slotStepMinutes == object.slotStepMinutes else { return false }
    guard self.startHour == object.startHour else { return false }
    return true
  }

  public static func == (lhs: PlanAppointmentSettingsInfo, rhs: PlanAppointmentSettingsInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
