//
//  HomeScreenServiceFetcher.swift
//  MyPodcast
//
//  Created by khaledus on 25/04/2024.
//

import Foundation

protocol HomeScreenFetcher {
    func fetchPodcasts() async -> [Podcast]
}

struct HomeScreenServiceFetcher: HomeScreenFetcher {
    @InjectedDependency(\.requestManager) var requestManager: RequestManagerProtocol
}

extension HomeScreenServiceFetcher {
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
