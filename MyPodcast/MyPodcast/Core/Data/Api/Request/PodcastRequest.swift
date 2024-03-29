//
//  PodcastRequest.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

enum PodcastRequest: RequestProtocol {
    case fecthPodcast(id: String)
    case bestPodcasts
    case searchPodcasts(term: String)
    case playlists

    var path: String {
        switch self {
        case .fecthPodcast(let id):
            return "/api/v2/podcasts/\(id)"
        case .bestPodcasts:
            return "/api/v2/best_podcasts"
        case .searchPodcasts(let term):
            return "/api/v2/search?q=\(term)"
        case .playlists:
            return "/api/v2/playlists"
        }
    }

    var requestType: RequestType {
        switch self {
        case .fecthPodcast, .bestPodcasts, .searchPodcasts, .playlists:
            return .get
        }
    }
}
