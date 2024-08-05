//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class MasterDataTaxonomyModelInfo: Codable, Equatable {
  public var carlineId: String?
  public var description: String?
  public var generations: [MasterDataTaxonomyGenerationInfo]?
  public var id: String?
  public var image: String?
  public var images: [String]?
  public var manufacturerCode: String?
  public var name: String?

  public init(carlineId: String? = nil, description: String?  = nil, generations: [MasterDataTaxonomyGenerationInfo]?  = nil, id: String? = nil, image: String?  = nil, images: [String]?  = nil, manufacturerCode: String?  = nil, name: String?  = nil) {
    self.carlineId = carlineId
    self.description = description
    self.generations = generations
    self.id = id
    self.image = image
    self.images = images
    self.manufacturerCode = manufacturerCode
    self.name = name
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? MasterDataTaxonomyModelInfo else { return false }
    guard self.carlineId == object.carlineId else { return false }
    guard self.description == object.description else { return false }
    guard self.generations == object.generations else { return false }
    guard self.id == object.id else { return false }
    guard self.image == object.image else { return false }
    guard self.images == object.images else { return false }
    guard self.manufacturerCode == object.manufacturerCode else { return false }
    guard self.name == object.name else { return false }
    return true
  }

  public static func == (lhs: MasterDataTaxonomyModelInfo, rhs: MasterDataTaxonomyModelInfo) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}