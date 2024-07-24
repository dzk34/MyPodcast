//
//  ExploreScreenTests.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation
import XCTest

@testable import MyPodcast


final class ExploreScreenTests: XCTestCase {
    @InjectedDependency(\.exploreScreenViewModelMock) var viewModel: ExploreScreenViewModelMock

    override func setUp() {
        super.setUp()
      viewModel = ExploreScreenViewModelMock(exploreScreenServiceFetcher: ExploreScreenFetcherMock())
    }
    
    func testExploreScreenLoadingState() async {
        XCTAssertTrue(viewModel.isLoading, "The view model should be loading")
        await viewModel.fetchGenres()
        XCTAssertFalse(viewModel.isLoading, "The view model shouldn't be loading")
    }
    
    func testExploreScreenFetcherEmptyResponse() async {
        viewModel = ExploreScreenViewModelMock(exploreScreenServiceFetcher: EmptyResponseExploreScreenFetcherMock())
        
        await viewModel.fetchGenres()
        XCTAssertEqual(viewModel.genres?.count, 0, "The viewModel's genres should be empty")
        XCTAssertFalse(viewModel.isLoading, "The viewModel shouldn't be loading when receiving empty response")
    }
}
