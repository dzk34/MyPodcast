//
//  GenreViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import Foundation

final class GenreViewModel: ObservableObject {
    private let genreServiceFetcher: GenreServiceFetcher
    @Published var isLoading: Bool
    @Published var podcasts: [Podcast] = []
//    var genreId: Int

    init(isLoading: Bool = true, /*genreId: Int,*/ genreServiceFetcher: GenreServiceFetcher) {
        self.isLoading = isLoading
//        self.genreId = genreId
        self.genreServiceFetcher = genreServiceFetcher
    }
    
    @MainActor
    func fetchPodcasts(id: Int) async {
//        isLoading = true
        self.podcasts = await genreServiceFetcher.fetchPodcasts(id: id)
//        isLoading = false
    }
    
//    @MainActor
//    func stopLoading() async {
//        isLoading = false
//    }
}
