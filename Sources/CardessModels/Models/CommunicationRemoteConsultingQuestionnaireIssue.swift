//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation



public class CommunicationRemoteConsultingQuestionnaireIssue: Codable, Equatable {
  public var chatSessionId: String?

  public init(chatSessionId: String?  = nil) {
    self.chatSessionId = chatSessionId
  }


  public func isEqual(to object: Any?) -> Bool {
    guard let object = object as? CommunicationRemoteConsultingQuestionnaireIssue else { return false }
    guard self.chatSessionId == object.chatSessionId else { return false }
    return true
  }

  public static func == (lhs: CommunicationRemoteConsultingQuestionnaireIssue, rhs: CommunicationRemoteConsultingQuestionnaireIssue) -> Bool {
    return lhs.isEqual(to: rhs)
  }
}