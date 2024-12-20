//
// Generated for Cardess.SELL
// https://github.com/yonaskolb/SwagGen
//  
//  Generated by Ilya Mikhailov
//  Copyright © 2022 MCon Germany GmbH. All rights reserved.

import Foundation

public enum CommunicationModelsEnumsLeadPipelinePhase: Int, Codable, Equatable, CaseIterable {
    case undefined = 0
    case newLead = 1
    case contacted = 2
    case demandIdentified = 3
    case showRoomVisited = 4
    case testDriveDone = 5
    case offerProvided = 6
    case contractRequested = 7
    case contractProvided = 8
    case contractAccepted = 9
    case deliveryPlanned = 10
    case delivered = 11
    case happyCall = 12
    case serviceLeadUndefined = 20
    case serviceLeadNew = 25
    case serviceLeadContacted = 30
    case serviceLeadAppointmentRequested = 32
    case serviceLeadAppointmentPlanned = 35
    case serviceLeadAppointmentConfirmed = 40
    case serviceLeadVehicleIsOnPremises = 45
    case serviceLeadHandoverPlanned = 50
    case serviceLeadHandoverDone = 55
}
