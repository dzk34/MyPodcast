//
//  GenreViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import Foundation

final class GenreViewModel: ObservableObject {
    private let genreServiceFetcher: GenreServiceFetcher
    @Published var podcasts: [Podcast] = []

    init(genreServiceFetcher: GenreServiceFetcher) {
        self.genreServiceFetcher = genreServiceFetcher
    }
    
    @MainActor
    func fetchPodcasts(id: Int) async {
        self.podcasts = await genreServiceFetcher.fetchPodcasts(id: id)
    }
}
