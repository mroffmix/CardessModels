//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation

public enum CommunicationTradeInCaseStatus: Int, Codable, Equatable, CaseIterable {
    case contactRequest = 0
    case new = 1
    case inProgress = 2
    case rejected = 3
    case accepted = 4
    case onHold = 5
    case review = 6
    case finished = 7
}
