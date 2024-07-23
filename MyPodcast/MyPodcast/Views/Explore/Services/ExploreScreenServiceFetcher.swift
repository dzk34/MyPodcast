//
//  ExploreScreenServiceFetcher.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

protocol ExploreScreenFetcher {
    func fetchGenres() async -> [Genre]
    func fetchPodcasts() async -> [Podcast]
}

struct ExploreScreenServiceFetcher: ExploreScreenFetcher {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol) {
        self.requestManager = requestManager
    }
}

extension ExploreScreenServiceFetcher {
    func fetchGenres() async -> [Genre] {
        let requestData = PodcastRequest.genres
        
        do {
            let genresList: GenresList = try await requestManager.perform(requestData)
            return genresList.genres
        } catch {
            print(error)
            return []
        }
    }
    
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
