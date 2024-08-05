//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class DeviceBindingRequest: Codable, Equatable {
  public var address: String?
  public var deviceName: String?
  public var isSandbox: Bool?

  public init(address: String?  = nil, deviceName: String?  = nil, isSandbox: Bool?  = nil) {
    self.address = address
    self.deviceName = deviceName
    self.isSandbox = isSandbox
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? DeviceBindingRequest else { return false }
    guard self.address == object.address else { return false }
    guard self.deviceName == object.deviceName else { return false }
    guard self.isSandbox == object.isSandbox else { return false }
    return true
  }

  public static func == (lhs: DeviceBindingRequest, rhs: DeviceBindingRequest) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
