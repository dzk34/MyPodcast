//
//  ExploreScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation


@MainActor
final class ExploreScreenViewModel: ObservableObject {
    private let exploreScreenServiceFetcher: ExploreScreenFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true, exploreScreenServiceFetcher: ExploreScreenFetcher) {
        self.isLoading = isLoading
        self.exploreScreenServiceFetcher = exploreScreenServiceFetcher
    }
    
    func fetchPodcasts() async {
        isLoading = true
        self.podcasts = await exploreScreenServiceFetcher.fetchPodcasts()
        isLoading = false
    }
    

    func stopLoading() async {
      isLoading = false
    }
}
