//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class ProcessSettings: Codable, Equatable {
  public var defaultPriceStickerTemplate: String?
  public var defaultTestDriveContractTemplate: String?
  public var deliveryReminderPeriod: Int?
  public var eventDuration: Int?
  public var fallBackPhoneNo: String?
  public var leadSources: [Int]?
  public var logoCorner: EnumsDealerLogoCorner?
  public var offerDelayPeriod: Int?
  public var orderCancellationPeriod: Int?
  public var orderSignatureReminderPeriod: Int?
  public var ringTimeNoAnswer: Int?
  public var ringTimeNoAnswerReception: Int?
  public var testDriveReminderPeriod: Int?
  public var videoCallReminderPeriod: Int?

  public init(defaultPriceStickerTemplate: String?  = nil, defaultTestDriveContractTemplate: String?  = nil, deliveryReminderPeriod: Int?  = nil, eventDuration: Int?  = nil, fallBackPhoneNo: String?  = nil, leadSources: [Int]?  = nil, logoCorner: EnumsDealerLogoCorner?  = nil, offerDelayPeriod: Int?  = nil, orderCancellationPeriod: Int?  = nil, orderSignatureReminderPeriod: Int?  = nil, ringTimeNoAnswer: Int?  = nil, ringTimeNoAnswerReception: Int?  = nil, testDriveReminderPeriod: Int?  = nil, videoCallReminderPeriod: Int?  = nil) {
    self.defaultPriceStickerTemplate = defaultPriceStickerTemplate
    self.defaultTestDriveContractTemplate = defaultTestDriveContractTemplate
    self.deliveryReminderPeriod = deliveryReminderPeriod
    self.eventDuration = eventDuration
    self.fallBackPhoneNo = fallBackPhoneNo
    self.leadSources = leadSources
    self.logoCorner = logoCorner
    self.offerDelayPeriod = offerDelayPeriod
    self.orderCancellationPeriod = orderCancellationPeriod
    self.orderSignatureReminderPeriod = orderSignatureReminderPeriod
    self.ringTimeNoAnswer = ringTimeNoAnswer
    self.ringTimeNoAnswerReception = ringTimeNoAnswerReception
    self.testDriveReminderPeriod = testDriveReminderPeriod
    self.videoCallReminderPeriod = videoCallReminderPeriod
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? ProcessSettings else { return false }
    guard self.defaultPriceStickerTemplate == object.defaultPriceStickerTemplate else { return false }
    guard self.defaultTestDriveContractTemplate == object.defaultTestDriveContractTemplate else { return false }
    guard self.deliveryReminderPeriod == object.deliveryReminderPeriod else { return false }
    guard self.eventDuration == object.eventDuration else { return false }
    guard self.fallBackPhoneNo == object.fallBackPhoneNo else { return false }
    guard self.leadSources == object.leadSources else { return false }
    guard self.logoCorner == object.logoCorner else { return false }
    guard self.offerDelayPeriod == object.offerDelayPeriod else { return false }
    guard self.orderCancellationPeriod == object.orderCancellationPeriod else { return false }
    guard self.orderSignatureReminderPeriod == object.orderSignatureReminderPeriod else { return false }
    guard self.ringTimeNoAnswer == object.ringTimeNoAnswer else { return false }
    guard self.ringTimeNoAnswerReception == object.ringTimeNoAnswerReception else { return false }
    guard self.testDriveReminderPeriod == object.testDriveReminderPeriod else { return false }
    guard self.videoCallReminderPeriod == object.videoCallReminderPeriod else { return false }
    return true
  }

  public static func == (lhs: ProcessSettings, rhs: ProcessSettings) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}
