//
//  Podcast.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

struct Playlist: Hashable, Codable {
    var total: Int
    var hasNext: Bool?
    var playlists: [Podcast]

    enum CodingKeys: String, CodingKey {
        case hasNext = "has_next"
        case total, playlists
    }

}

struct PodcastList: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var total: Int
    var hasNext: Bool?
    var podcasts: [Podcast]
    
    enum CodingKeys: String, CodingKey {
        case hasNext = "has_next"
        case id, name, total, podcasts
    }
}

struct PodcastSearchList: Codable {
    var results: [Podcast]
}

struct Podcast: Hashable, Codable, Identifiable {
    var id: String
    var title: String
    var description: String
    var image: String
    var thumbnail: String
    var rss: String
    var type: String
}

enum PodcastType: String, CaseIterable, Codable {//dzk
    case episodic = "episodic"
    case sport = "sport"
    case business = "business"
}

struct GenresList: Codable {
    let genres: [Genre]
}

struct Genre: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var parentId: Int?
    
    enum CodingKeys: String, CodingKey {
        case parentId = "parent_id"
        case id, name
    }
}
