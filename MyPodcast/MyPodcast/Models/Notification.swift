//
//  Notification.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import Foundation

struct Notification: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var isRead: Bool
}
