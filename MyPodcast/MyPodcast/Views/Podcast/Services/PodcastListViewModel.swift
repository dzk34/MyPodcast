//
//  PodcastListViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

protocol PodcastListFetcher {
    func fetchPodcasts() async -> [Podcast]
}

@MainActor
final class PodcastListViewModel: ObservableObject {
    private let podcastListFetcher: PodcastListFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true, podcastListFetcher: PodcastListFetcher) {
        self.isLoading = isLoading
        self.podcastListFetcher = podcastListFetcher
    }
    
    func fetchPodcasts() async {
        isLoading = true
        self.podcasts = await podcastListFetcher.fetchPodcasts()
        isLoading = false
    }
    

    func stopLoading() async {
      isLoading = false
    }
}
