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
    var podcast_id: Int
    
    var podcast: Podcast? {
        ModelData().podcasts.first(where: { $0.id == podcast_id })
    }
}
