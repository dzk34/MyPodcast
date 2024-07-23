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
    private var requestManager: RequestManagerMock?
    
    override func setUp() {
        super.setUp()
        requestManager = RequestManagerMock(apiManager: APIManagerMock(), dataParser: DataParser())
    }

    func testRequestGenres() async throws {
        guard let genresList: GenresList = try await requestManager?.perform(GenresRequestMock.fetchGenres)
        else {
            XCTFail("Failed to get data from the request manager")
            return
        }
        
        let first = genresList.genres.first
        let last = genresList.genres.last

        XCTAssertEqual(first?.id, 139)
        XCTAssertEqual(first?.name, "VR & AR")

        XCTAssertEqual(last?.id, 216)
        XCTAssertEqual(last?.name, "Politics")
    }
    
    func testRequestPodcasts() async throws {
        guard let podcastList: PodcastList = try await requestManager?.perform(PodcastsRequestMock.getPodcasts)
        else {
            XCTFail("Failed to get data from the request manager")
            return
        }

        let first = podcastList.podcasts.first
        let last = podcastList.podcasts.last

        XCTAssertEqual(first?.id, "ee84d7d11875465fb89487675ff5425d")
        XCTAssertEqual(first?.title, "THE ED MYLETT SHOW")
        XCTAssertEqual(first?.description, "The Ed Mylett Show showcases the greatest peak-performers across all industries in one place, sharing their journey, knowledge and thought leadership. With Ed Mylett and featured guests in almost every industry including business, health, collegiate and professional sports, politics, entrepreneurship, science, and entertainment, you'll find motivation, inspiration and practical steps to help you become the best version of you!")

        XCTAssertEqual(last?.id, "40b72ce8610649529542575dedf06c86")
    }
}
