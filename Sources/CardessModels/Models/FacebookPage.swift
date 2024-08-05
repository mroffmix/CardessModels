//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class FacebookPage: Codable, Equatable {
  public var accessToken: String?
  public var id: String?
  public var name: String?
  public var picture: PictureDataContainer?

  public init(accessToken: String?  = nil, id: String?  = nil, name: String?  = nil, picture: PictureDataContainer?  = nil) {
    self.accessToken = accessToken
    self.id = id
    self.name = name
    self.picture = picture
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? FacebookPage else { return false }
    guard self.accessToken == object.accessToken else { return false }
    guard self.id == object.id else { return false }
    guard self.name == object.name else { return false }
    guard self.picture == object.picture else { return false }
    return true
  }

  public static func == (lhs: FacebookPage, rhs: FacebookPage) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
