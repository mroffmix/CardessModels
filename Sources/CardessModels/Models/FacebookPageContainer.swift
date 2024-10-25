//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class FacebookPageContainer: Codable, Equatable {
  public var business: FacebookBusiness?
  public var page: FacebookPage?
  public var status: Bool?
  public var subscription: FacebookPageSubscription?

  public init(business: FacebookBusiness?  = nil, page: FacebookPage?  = nil, status: Bool?  = nil, subscription: FacebookPageSubscription?  = nil) {
    self.business = business
    self.page = page
    self.status = status
    self.subscription = subscription
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? FacebookPageContainer else { return false }
    guard self.business == object.business else { return false }
    guard self.page == object.page else { return false }
    guard self.status == object.status else { return false }
    guard self.subscription == object.subscription else { return false }
    return true
  }

  public static func == (lhs: FacebookPageContainer, rhs: FacebookPageContainer) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
