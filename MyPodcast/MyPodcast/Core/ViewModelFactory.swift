//
//  ViewModelFactory.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

@MainActor
class ViewModelFactory: ObservableObject {
    let requestManager = RequestManager()

    // MARK: - Home Screen
    func makeHomeScreenViewModel() -> HomeScreenViewModel {
        HomeScreenViewModel(homeScreenServiceFetcher: makeHomeScreenServiceFetcher())
    }

    func makeHomeScreenServiceFetcher() -> HomeScreenServiceFetcher {
        HomeScreenServiceFetcher(requestManager: requestManager)
    }

    
    // MARK: - Explore Screen
    func makeExploreScreenViewModel() -> ExploreScreenViewModel {
        ExploreScreenViewModel(exploreScreenServiceFetcher: makeExploreScreenServiceFetcher())
    }
    
    func makeExploreScreenServiceFetcher() -> ExploreScreenServiceFetcher {
        ExploreScreenServiceFetcher(requestManager: requestManager)
    }
    
    
    // MARK: - PodcastList Screen
    func makePodcastListServiceFetcher() -> PodcastListServiceFetcher {
        PodcastListServiceFetcher(requestManager: requestManager)
    }
    
    func makePodcastListViewModel() -> PodcastListViewModel {
        PodcastListViewModel(podcastListServiceFetcher: makePodcastListServiceFetcher())
    }
    
    // MARK: - Genre Screen
    func makeGenreServiceFetcher() -> GenreScreenServiceFetcher {
        GenreScreenServiceFetcher(requestManager: requestManager)
    }
    
    func makeGenreViewModel() -> GenreViewModel {
        GenreViewModel(genreServiceFetcher: makeGenreServiceFetcher())
    }
}

extension ViewModelFactory {
    static func fetchMockData() -> MockData {
        MockData()
    }
}
