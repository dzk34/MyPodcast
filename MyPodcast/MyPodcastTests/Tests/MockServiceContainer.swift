//
//  MockServiceContainer.swift
//  MyPodcastTests
//
//  Created by khaledus on 24/07/2024.
//

import Foundation

@testable import MyPodcast

private struct ExploreScreenFetcherMockKey: InjectedServiceKey {
    static var currentValue: ExploreScreenFetcher = ExploreScreenFetcherMock()
}

private struct EmptyResponseExploreScreenFetcherMockKey: InjectedServiceKey {
    static var currentValue: ExploreScreenFetcher = EmptyResponseExploreScreenFetcherMock()
}

private struct ExploreScreenViewModelMockKey: InjectedServiceKey {
    static var currentValue: ExploreScreenViewModelMock = ExploreScreenViewModelMock()
}



extension InjectedServiceValues {
    var exploreScreenFetcherMock: ExploreScreenFetcher {
        get { Self[ExploreScreenFetcherMockKey.self] }
        set { Self[ExploreScreenFetcherMockKey.self] = newValue }
    }
    
    var emptyResponseExploreScreenFetcherMock: ExploreScreenFetcher {
        get { Self[EmptyResponseExploreScreenFetcherMockKey.self] }
        set { Self[EmptyResponseExploreScreenFetcherMockKey.self] = newValue }
    }
    
    var exploreScreenViewModelMock: ExploreScreenViewModelMock {
        get { Self[ExploreScreenViewModelMockKey.self] }
        set { Self[ExploreScreenViewModelMockKey.self] = newValue }
    }
}
