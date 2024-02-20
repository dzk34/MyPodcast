//
//  ExploreScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

final class ExploreScreenViewModel: ObservableObject {
    private let requestManager = RequestManager()
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true) {
      self.isLoading = isLoading
    }
    
    func fetchPodcasts() async {
        isLoading = true
        do {
            let podcastsList: PodcastList = try await requestManager.perform(PodcastRequest.bestPodcasts)
            
            self.podcasts = podcastsList.podcasts

            isLoading = false
        } catch {
            print("Error fetching podcasts...\(error.localizedDescription)")
        }
    }
    
    @MainActor
    func stopLoading() async {
      isLoading = false
    }

}
