//
//  Podcast.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
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
