//
//  ExploreScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

protocol ExploreScreenFetcher {
    func fetchPodcasts() async -> [Podcast]
}

@MainActor
final class ExploreScreenViewModel: ObservableObject {
    private let exploreScreenFetcher: ExploreScreenFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true, exploreScreenFetcher: ExploreScreenFetcher) {
        self.isLoading = isLoading
        self.exploreScreenFetcher = exploreScreenFetcher
    }
    
    func fetchPodcasts() async {
        isLoading = true
        self.podcasts = await exploreScreenFetcher.fetchPodcasts()
        isLoading = false
    }
    

    func stopLoading() async {
      isLoading = false
    }
}
