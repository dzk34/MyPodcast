//
//  ExploreScreenServiceFetcher.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

protocol ExploreScreenFetcher {
    func genres() async -> [Genre]
    func fetchPodcasts() async -> [Podcast]
}

struct ExploreScreenServiceFetcher: ExploreScreenFetcher {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol) {
        self.requestManager = requestManager
    }
}

extension ExploreScreenServiceFetcher {
    func genres() async -> [Genre] {
        let requestData = PodcastRequest.genres
        
        do {
            let genresList: GenresList = try await requestManager.perform(requestData)
            return genresList.genres
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
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
