//
//  PodcastListService.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

protocol PodcastListFetcher {
    func fetchPodcasts() async -> [Podcast]
}

struct PodcastListServiceFetcher {
    @InjectedDependency(\.requestManager) var requestManager: RequestManagerProtocol
}

extension PodcastListServiceFetcher: PodcastListFetcher {
    func fetchPodcasts() async -> [Podcast] {
        let requestData = PodcastRequest.bestPodcasts
        
        do {
            let podcastList: PodcastList = try await requestManager.perform(requestData)
            return podcastList.podcasts
        } catch {
            print(error)
            return []
        }
    }
}
