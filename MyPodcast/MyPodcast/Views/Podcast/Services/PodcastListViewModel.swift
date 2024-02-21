//
//  PodcastListViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

@MainActor
final class PodcastListViewModel: ObservableObject {
    private let podcastListServiceFetcher: PodcastListServiceFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true, podcastListServiceFetcher: PodcastListServiceFetcher) {
        self.isLoading = isLoading
        self.podcastListServiceFetcher = podcastListServiceFetcher
    }
    
    func fetchPodcasts() async {
        isLoading = true
        self.podcasts = await podcastListServiceFetcher.fetchPodcasts()
        isLoading = false
    }

    func stopLoading() async {
      isLoading = false
    }
}
