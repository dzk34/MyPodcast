//
//  GenreServiceFetcher.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import Foundation

protocol GenreServiceFetcher {
    func fetchPodcasts(id: Int) async -> [Podcast]
}

struct GenreScreenServiceFetcher: GenreServiceFetcher {
    @InjectedDependency(\.requestManager) var requestManager: RequestManagerProtocol
}

extension GenreScreenServiceFetcher{
    func fetchPodcasts(id: Int) async -> [Podcast] {
        let requestData = PodcastRequest.podcastsByGenre(id: id)

        do {
            let podcastList: PodcastList = try await requestManager.perform(requestData)
            return podcastList.podcasts
        } catch {
            print(error)
            return []
        }
    }
}
