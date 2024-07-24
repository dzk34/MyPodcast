//
//  ServiceContainer.swift
//  MyPodcast
//
//  Created by khaledus on 24/07/2024.
//

import Foundation

// MARK: Injected Services

private struct RequestManagerKey: InjectedServiceKey {
    static var currentValue: RequestManagerProtocol = RequestManager()
}

private struct GenreViewModelKey: InjectedServiceKey {
    static var currentValue: GenreViewModel = GenreViewModel()
}

private struct GenreServiceFetcherKey: InjectedServiceKey {
    static var currentValue: GenreServiceFetcher = GenreScreenServiceFetcher()
}

private struct HomeScreenViewModelKey: InjectedServiceKey {
    static var currentValue: HomeScreenViewModel = HomeScreenViewModel()
}

private struct HomeScreenServiceFetcherKey: InjectedServiceKey {
    static var currentValue: HomeScreenFetcher = HomeScreenServiceFetcher()
}

private struct ExploreScreenServiceFetcherKey: InjectedServiceKey {
    static var currentValue: ExploreScreenFetcher = ExploreScreenServiceFetcher()
}

private struct ExploreScreenViewModelKey: InjectedServiceKey {
    static var currentValue: ExploreScreenViewModel = ExploreScreenViewModel()
}

private struct PodcastListViewModelKey: InjectedServiceKey {
    static var currentValue: PodcastListViewModel = PodcastListViewModel()
}

private struct PodcastListServiceFetcherKey: InjectedServiceKey {
    static var currentValue: PodcastListFetcher = PodcastListServiceFetcher()
}

extension InjectedServiceValues {
    var requestManager: RequestManagerProtocol {
        get { Self[RequestManagerKey.self] }
        set { Self[RequestManagerKey.self] = newValue }
    }
    
    var genreViewModel: GenreViewModel {
        get { Self[GenreViewModelKey.self] }
        set { Self[GenreViewModelKey.self] = newValue }
    }
    
    var genreServiceFetcher: GenreServiceFetcher {
        get { Self[GenreServiceFetcherKey.self] }
        set { Self[GenreServiceFetcherKey.self] = newValue }
    }
    
    var homeScreenViewModel: HomeScreenViewModel {
        get { Self[HomeScreenViewModelKey.self] }
        set { Self[HomeScreenViewModelKey.self] = newValue }
    }
    
    var homeScreenServiceFetcher: HomeScreenFetcher {
        get { Self[HomeScreenServiceFetcherKey.self] }
        set { Self[HomeScreenServiceFetcherKey.self] = newValue }
    }
    
    var exploreScreenServiceFetcher: ExploreScreenFetcher {
        get { Self[ExploreScreenServiceFetcherKey.self] }
        set { Self[ExploreScreenServiceFetcherKey.self] = newValue }
    }
    
    var exploreScreenViewModel: ExploreScreenViewModel {
        get { Self[ExploreScreenViewModelKey.self] }
        set { Self[ExploreScreenViewModelKey.self] = newValue }
    }
    
    var podcastListViewModel: PodcastListViewModel {
        get { Self[PodcastListViewModelKey.self] }
        set { Self[PodcastListViewModelKey.self] = newValue }
    }
    
    var podcastListServiceFetcher: PodcastListFetcher {
        get { Self[PodcastListServiceFetcherKey.self] }
        set { Self[PodcastListServiceFetcherKey.self] = newValue }
    }
}
