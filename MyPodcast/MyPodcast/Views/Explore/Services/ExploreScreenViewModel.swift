//
//  ExploreScreenViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation


final class ExploreScreenViewModel: ObservableObject {
    @InjectedDependency(\.exploreScreenServiceFetcher) var exploreScreenServiceFetcher: ExploreScreenFetcher

    @Published var isLoading: Bool
    @Published var genres: [Genre] = []

    init(isLoading: Bool = true) {
        self.isLoading = isLoading
    }
    
    @MainActor
    func fetchGenres() async {
        isLoading = true
        self.genres = await exploreScreenServiceFetcher.fetchGenres()
        isLoading = false
    }
    
    @MainActor
    func stopLoading() async {
      isLoading = false
    }
}
