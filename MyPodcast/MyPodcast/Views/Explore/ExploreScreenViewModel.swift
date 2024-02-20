//
//  ExploreScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

protocol ExploreFetcher {
    func fetchPodcasts() async -> [Podcast]
}

@MainActor
final class ExploreScreenViewModel: ObservableObject {
    private let exploreFetcher: ExploreFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []

    init(isLoading: Bool = true, exploreFetcher: ExploreFetcher) {
        self.isLoading = isLoading
        self.exploreFetcher = exploreFetcher
    }
    
    func fetchPodcasts() async {
        isLoading = true
        self.podcasts = await exploreFetcher.fetchPodcasts()
        isLoading = false
    }
    

    func stopLoading() async {
      isLoading = false
    }

}
