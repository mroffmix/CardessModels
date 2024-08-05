//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation

public enum EnumsEventType: Int, Codable, Equatable, CaseIterable {
    case firstContact = 0
    case offerReady = 1
    case contractReady = 2
    case testdriveReminder = 3
    case deliveryReminder = 4
    case registeredForEvent = 5
    case downloadLinkReady = 6
    case registeredForVideoCall = 7
    case videoCallReminder = 8
    case dynamic = 9
    case sendSecurityCode = 10
    case leadAssigned = 11
    case contractRequested = 12
    case contractSigned = 13
    case contractSignatureReminder = 14
    case sendCarCheckNotification = 15
    case testdrivePlanned = 16
    case leadNotContactedReminder = 17
    case appointmentConfirmation = 18
    case appointmentRequested = 19
    case serviceAppointmentConfirmation = 20
}