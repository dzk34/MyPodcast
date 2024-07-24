//
//  HomeScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 25/04/2024.
//

import Foundation

final class HomeScreenViewModel: ObservableObject {
    @InjectedDependency(\.homeScreenServiceFetcher) var homeScreenServiceFetcher: HomeScreenFetcher
    @Published var podcasts: [Podcast] = []
}

extension HomeScreenViewModel {
    @MainActor
    func fetchPodcasts() async {
        self.podcasts = await homeScreenServiceFetcher.fetchPodcasts()
    }
}
