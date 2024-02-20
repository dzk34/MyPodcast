//
//  PodcastRequestMock.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

@testable import MyPodcast

enum PodcastsRequestMock: RequestProtocol {
    case getPodcasts

    var requestType: RequestType {
        return .GET
    }

    var path: String {
        guard let path = Bundle.main.path(forResource: "Podcasts", ofType: "json") else { return "" }
        return path
    }
}
