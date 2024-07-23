//
//  ExploreScreenFetcherMock.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

@testable import MyPodcast

struct ExploreScreenFetcherMock: ExploreScreenFetcher {
    func fetchGenres() async -> [Genre] {
        let genresList: GenresList = load("Genres.json")
        return genresList.genres
    }
    
    func fetchPodcasts() async -> [Podcast] {
        let podcastList: PodcastList = load("Podcasts.json")
        return podcastList.podcasts
    }
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}

struct EmptyResponseExploreScreenFetcherMock: ExploreScreenFetcher {
    func fetchGenres() async -> [Genre] {
        []
    }
    
    func fetchPodcasts() async -> [Podcast] {
        []
    }
}
