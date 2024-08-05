//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class BDCRedirectCallInfo: Codable, Equatable {
  public var isIncoming: Bool?
  public var localId: String?
  public var locationId: String?
  public var phoneNo: String?
  public var remoteId: String?
  public var to: String?

  public init(isIncoming: Bool?  = nil, localId: String? = nil, locationId: String?  = nil, phoneNo: String?  = nil, remoteId: String? = nil, to: String? = nil) {
    self.isIncoming = isIncoming
    self.localId = localId
    self.locationId = locationId
    self.phoneNo = phoneNo
    self.remoteId = remoteId
    self.to = to
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? BDCRedirectCallInfo else { return false }
    guard self.isIncoming == object.isIncoming else { return false }
    guard self.localId == object.localId else { return false }
    guard self.locationId == object.locationId else { return false }
    guard self.phoneNo == object.phoneNo else { return false }
    guard self.remoteId == object.remoteId else { return false }
    guard self.to == object.to else { return false }
    return true
  }

  public static func == (lhs: BDCRedirectCallInfo, rhs: BDCRedirectCallInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
