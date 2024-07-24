//
//  ExploreScreenViewModelMock.swift
//  MyPodcastTests
//
//  Created by khaledus on 24/07/2024.
//

import Foundation

@testable import MyPodcast

final class ExploreScreenViewModelMock: ObservableObject {
    var exploreScreenServiceFetcher: ExploreScreenFetcher?
    
    @Published var isLoading: Bool
    @Published var genres: [Genre]? = []

    init(isLoading: Bool = true, exploreScreenServiceFetcher: ExploreScreenFetcher? = nil) {
        self.isLoading = isLoading
        self.exploreScreenServiceFetcher = exploreScreenServiceFetcher
    }
    
    @MainActor
    func fetchGenres() async {
        isLoading = true
        self.genres = await exploreScreenServiceFetcher?.fetchGenres()
        isLoading = false
    }
    
    @MainActor
    func stopLoading() async {
      isLoading = false
    }
}
