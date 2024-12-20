//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class DocmosisEntityRenderRequest<T:Codable>: Codable, Equatable {
  public var data: T?
  public var entityId: String?
  public var entityName: String?
  public var outputFormat: String?
  public var outputName: String?
  public var templateName: String?

  public init(data: T? = nil, entityId: String? = nil, entityName: String?  = nil, outputFormat: String?  = nil, outputName: String?  = nil, templateName: String?  = nil) {
    self.data = data
    self.entityId = entityId
    self.entityName = entityName
    self.outputFormat = outputFormat
    self.outputName = outputName
    self.templateName = templateName
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? DocmosisEntityRenderRequest else { return false }
    // guard self.data == object.data else { return false }
    guard self.entityId == object.entityId else { return false }
    guard self.entityName == object.entityName else { return false }
    guard self.outputFormat == object.outputFormat else { return false }
    guard self.outputName == object.outputName else { return false }
    guard self.templateName == object.templateName else { return false }
    return true
  }

  public static func == (lhs: DocmosisEntityRenderRequest, rhs: DocmosisEntityRenderRequest) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
