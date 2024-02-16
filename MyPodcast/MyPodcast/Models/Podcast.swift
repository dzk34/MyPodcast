//
//  Podcast.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import Foundation

struct Podcast: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var image: String
    var date: String
    var url: String
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case news = "News"
        case sport = "Sport"
        case business = "Business"
    }
}
