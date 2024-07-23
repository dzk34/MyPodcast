//
//  NotificationRequest.swift
//  MyPodcast
//
//  Created by khaledus on 25/04/2024.
//

import Foundation

enum NotificationRequest: RequestProtocol {
    case notifications
    case notification(id: String)
    case notificationRead(id: String)

    var path: String {
        switch self {
        case .notifications:
            return "/api/v2/notifications"
        case .notification(let id):
            return "/api/v2/notification/\(id)"
        case .notificationRead(let id):
            return "/api/v2/notification/read/\(id)"
        }
    }
    
    var requestType: RequestType {
        switch self {
        case .notificationRead:
            return .post
        default:
            return .get
        }
    }
}
