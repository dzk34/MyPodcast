//
//  Notification.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import Foundation

struct Notification: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var isRead: Bool
    var podcast_id: Int
    
    var podcast: Podcast? {
        ModelData().podcasts.first(where: { $0.id == podcast_id })
    }
}
