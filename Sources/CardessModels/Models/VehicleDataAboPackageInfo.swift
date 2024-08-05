//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class VehicleDataAboPackageInfo: Codable, Equatable {
  public var aboExtraKmPrice: Double?
  public var aboPackageContent: [String]?
  public var aboPackageFreeHtml: String?
  public var defaultMileage: Int?
  public var defaultPeriod: Int?
  public var matrix: VehicleDataPriceMatrixInfo?

  public init(aboExtraKmPrice: Double?  = nil, aboPackageContent: [String]?  = nil, aboPackageFreeHtml: String?  = nil, defaultMileage: Int?  = nil, defaultPeriod: Int?  = nil, matrix: VehicleDataPriceMatrixInfo?  = nil) {
    self.aboExtraKmPrice = aboExtraKmPrice
    self.aboPackageContent = aboPackageContent
    self.aboPackageFreeHtml = aboPackageFreeHtml
    self.defaultMileage = defaultMileage
    self.defaultPeriod = defaultPeriod
    self.matrix = matrix
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? VehicleDataAboPackageInfo else { return false }
    guard self.aboExtraKmPrice == object.aboExtraKmPrice else { return false }
    guard self.aboPackageContent == object.aboPackageContent else { return false }
    guard self.aboPackageFreeHtml == object.aboPackageFreeHtml else { return false }
    guard self.defaultMileage == object.defaultMileage else { return false }
    guard self.defaultPeriod == object.defaultPeriod else { return false }
    guard self.matrix == object.matrix else { return false }
    return true
  }

  public static func == (lhs: VehicleDataAboPackageInfo, rhs: VehicleDataAboPackageInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}