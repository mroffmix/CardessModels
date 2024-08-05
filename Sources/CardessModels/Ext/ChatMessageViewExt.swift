//
//  File.swift
//  
//
//  Created by Ilya on 22.07.24.
//

import Foundation

extension ChatMessageView: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(message)
  }
}


public class DecodableChatMessageView: ChatMessageView {
  public required init(from decoder: Decoder) throws {
    super.init()

    let container = try decoder.container(keyedBy: CodingKeys.self)
    

    let dateFormatter = ISO8601DateFormatter()
    dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

    if let createdOnString = try container.decodeIfPresent(String.self, forKey: .createdOn) {
      self.createdOn = dateFormatter.date(from: createdOnString)
    }

    if let modifiedOnString = try container.decodeIfPresent(String.self, forKey: .modifiedOn) {
      self.modifiedOn = dateFormatter.date(from: modifiedOnString)
    }

    self.id = try container.decodeIfPresent(String.self, forKey: .id)
    self.leadId = try container.decodeIfPresent(String.self, forKey: .leadId)
    self.message = try container.decodeIfPresent(String.self, forKey: .message)
    self.messageSource = try container.decodeIfPresent(EnumsMessageSource.self, forKey: .messageSource)
    self.messageType = try container.decodeIfPresent(EnumsMessageType.self, forKey: .messageType)
    self.sender = try container.decodeIfPresent(UserInfo.self, forKey: .sender)
    self.senderId = try container.decodeIfPresent(String.self, forKey: .senderId)
    self.threadId = try container.decodeIfPresent(String.self, forKey: .threadId)
  }

  public override func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    let dateFormatter = ISO8601DateFormatter()
    dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

    if let createdOn = createdOn {
      let createdOnString = dateFormatter.string(from: createdOn)
      try container.encode(createdOnString, forKey: .createdOn)
    }

    if let modifiedOn = modifiedOn {
      let modifiedOnString = dateFormatter.string(from: modifiedOn)
      try container.encode(modifiedOnString, forKey: .modifiedOn)
    }

    try container.encode(id, forKey: .id)
    try container.encode(leadId, forKey: .leadId)
    try container.encode(message, forKey: .message)
    try container.encode(messageSource, forKey: .messageSource)
    try container.encode(messageType, forKey: .messageType)
    try container.encode(sender, forKey: .sender)
    try container.encode(senderId, forKey: .senderId)
    try container.encode(threadId, forKey: .threadId)
  }
  
}

extension DecodableChatMessageView {
  enum CodingKeys: String, CodingKey {
    case createdOn, id, leadId, message, messageSource, messageType, modifiedOn, sender, senderId, threadId
  }
}
