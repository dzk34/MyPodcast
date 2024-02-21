//
//  APIManagerMock.swift
//  MyPodcastTests
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

@testable import MyPodcast

struct APIManagerMock: APIManagerProtocol {
    func perform(_ request: RequestProtocol, authToken: String) async throws -> Data {
        return try Data(contentsOf: URL(fileURLWithPath: request.path), options: .mappedIfSafe)
    }
}
