//
//  Activity.swift
//  
//
//  Created by Ilya on 24.10.22.
//

import Foundation

extension ActivityInfo {

 public func setState(_ state: EnumsActivityStatus) {
    self.state = state
    if let startDate = self.startDate {
      setDuration(date: startDate)
    }
    switch state {
      case .canceled:
        setEndDateNow()
      case .inProgress:
        setDuration(date: Date())
      case .completed:
        setEndDateNow()
      default:
        break
    }
  }


  public func getDateAndTime() -> Date {
    return startDate ?? Date()
    //        if let startDate = startDate!.getDateFromString() {
    //            return startDate
    //        } else {
    //            fatalError(self.startDate!)
    //        }

  }

  public func getDate() -> Date {
    let components = Calendar.current.dateComponents([.year, .month, .day], from: getDateAndTime())
    return Calendar.current.date(from: components)!
  }

  public func getHeader() -> String {
    let date = self.getDateAndTime()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.doesRelativeDateFormatting = true
    dateFormatter.timeZone = TimeZone.current
    return dateFormatter.string(from: date)
  }

  // FIXME : make it private
  public func setDuration(date: Date) {
    self.startDate = date
    switch self.type {
      case .testDrive:
        self.endDate = date.addingTimeInterval(60.0 * 60.0)
      case .service:
        self.endDate = date.addingTimeInterval(30.0 * 60.0)
      case .call:
        self.endDate = date.addingTimeInterval(15.0 * 60.0)
      case .vehicleDelivery:
        self.endDate = date.addingTimeInterval(15.0 * 60.0)
      default:
        self.endDate = date.addingTimeInterval(15.0 * 60.0)
    }

    if self.type == .toDo {
      if let newDate = Calendar.current.date(bySettingHour: 23, minute: 0, second: 0, of: self.startDate ?? Date()) {
        self.startDate = newDate
        self.endDate = newDate //newDate.addingTimeInterval(10.0 * 60.0)
      }
    }
  }
  private func setEndDateNow() {
    self.endDate = Date()
    if self.type == .toDo {
      self.endDate = self.startDate
    }
  }
}
