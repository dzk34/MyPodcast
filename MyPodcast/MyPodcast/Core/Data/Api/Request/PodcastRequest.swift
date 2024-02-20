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

    var path: String {
        switch self {
        case .fecthPodcast(let id):
            return "/api/v2/podcasts/\(id)"
        case .bestPodcasts:
            return "/wp-json/podcasts/all/most-recent"
        case .searchPodcasts(let term):
            return "/api/v2/search?q=\(term)"
        }
    }

    var requestType: RequestType {
        switch self {
        case .fecthPodcast, .bestPodcasts, .searchPodcasts:
            return .get
        }
    }

//  var urlParams: [String: String?] {
//    switch self {
//    case let .getAnimalsBy(name, age, type):
//      var params: [String: String] = [:]
//      if !name.isEmpty {
//        params["name"] = name
//      }
//
//      return params
//    }
//  }
//  
}

