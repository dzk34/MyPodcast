//
//  GenreViewModel.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import Foundation

final class GenreViewModel: ObservableObject {
    @InjectedDependency(\.genreServiceFetcher) var genreServiceFetcher: GenreServiceFetcher
    @Published var podcasts: [Podcast] = []
    
    @MainActor
    func fetchPodcasts(id: Int) async {
        self.podcasts = await genreServiceFetcher.fetchPodcasts(id: id)
    }
}
