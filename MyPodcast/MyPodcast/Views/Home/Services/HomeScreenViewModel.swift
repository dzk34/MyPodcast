//
//  HomeScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 25/04/2024.
//

import Foundation

final class HomeScreenViewModel: ObservableObject {
    private let homeScreenServiceFetcher: HomeScreenServiceFetcher
    @Published var podcasts: [Podcast] = []

    init(homeScreenServiceFetcher: HomeScreenServiceFetcher) {
        self.homeScreenServiceFetcher = homeScreenServiceFetcher
    }
}

extension HomeScreenViewModel {
    @MainActor
    func fetchPodcasts() async {
        self.podcasts = await homeScreenServiceFetcher.fetchPodcasts()
    }
}
