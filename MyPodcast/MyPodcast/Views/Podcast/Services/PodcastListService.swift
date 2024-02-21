//
//  PodcastListService.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

struct PodcastListService {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol) {
        self.requestManager = requestManager
    }
}

extension PodcastListService: PodcastListFetcher {
    func fetchPodcasts() async -> [Podcast] {
        let requestData = PodcastRequest.bestPodcasts
        
        do {
            let podcastList: PodcastList = try await requestManager.perform(requestData)
            return podcastList.podcasts
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
