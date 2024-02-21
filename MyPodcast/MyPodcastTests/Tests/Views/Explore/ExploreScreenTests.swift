//
//  ExploreScreenTests.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation
import XCTest

@testable import MyPodcast

@MainActor
final class ExploreScreenTests: XCTestCase {
    var viewModel: ExploreScreenViewModel!
    
    @MainActor
    override func setUp() {
        super.setUp()
      viewModel = ExploreScreenViewModel(exploreScreenServiceFetcher: ExploreScreenFetcherMock())
    }
    
    func testExploreScreenLoadingState() async {
        XCTAssertTrue(viewModel.isLoading, "The view model should be loading")
        await viewModel.fetchPodcasts()
        XCTAssertFalse(viewModel.isLoading, "The view model shouldn't be loading")
    }
    
    func testExploreScreenFetcherEmptyResponse() async {
        viewModel = ExploreScreenViewModel(exploreScreenServiceFetcher: EmptyResponseExploreScreenFetcherMock())
        
        await viewModel.fetchPodcasts()
        XCTAssertEqual(viewModel.podcasts.count, 0, "The viewModel's podcasts should be empty")
        XCTAssertFalse(viewModel.isLoading, "The viewModel shouldn't be loading when receiving empty response")
    }
    
    func testUpdatePageOnFetchMorePodcasts() async {
        
    }
}
