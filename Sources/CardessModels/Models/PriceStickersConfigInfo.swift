//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class PriceStickersConfigInfo: Codable, Equatable {
  public var maxPriceStickersQuantity: Int?
  public var priceStickers: [PriceStickerInfo]?

  public init(maxPriceStickersQuantity: Int?  = nil, priceStickers: [PriceStickerInfo]?  = nil) {
    self.maxPriceStickersQuantity = maxPriceStickersQuantity
    self.priceStickers = priceStickers
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? PriceStickersConfigInfo else { return false }
    guard self.maxPriceStickersQuantity == object.maxPriceStickersQuantity else { return false }
    guard self.priceStickers == object.priceStickers else { return false }
    return true
  }

  public static func == (lhs: PriceStickersConfigInfo, rhs: PriceStickersConfigInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}