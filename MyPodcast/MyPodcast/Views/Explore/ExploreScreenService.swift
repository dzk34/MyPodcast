//
//  ExploreScreenService.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

struct ExploreScreenService {
  private let requestManager: RequestManagerProtocol

  init(requestManager: RequestManagerProtocol) {
    self.requestManager = requestManager
  }
}

extension ExploreScreenService: ExploreFetcher {
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
