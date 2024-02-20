//
//  RequestManagerTests.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

import XCTest
@testable import MyPodcast

class RequestManagerTests: XCTestCase {
    private var requestManager: RequestManagerProtocol?
    
    override func setUp() {
        super.setUp()
        requestManager = RequestManager(apiManager: APIManagerMock())
    }
    
    func testRequestPodcasts() async throws {
        guard let podcastList: PodcastList = try await requestManager?.perform(PodcastsRequestMock.getPodcasts) else {
            XCTFail("Didn't get data from the request manager")
            return
        }
        
        let podcasts = podcastList.podcasts
        
        let firstPodcast = podcasts.first
        let lastPodcast = podcasts.last
        
        XCTAssertEqual(podcasts.count, 20)
        XCTAssertEqual(firstPodcast?.id, "ee84d7d11875465fb89487675ff5425d")
        XCTAssertEqual(lastPodcast?.id, "40b72ce8610649529542575dedf06c86")
    }
}
