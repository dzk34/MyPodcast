//
//  GenresRequestMock.swift
//  MyPodcastTests
//
//  Created by khaledus on 23/07/2024.
//

import Foundation

@testable import MyPodcast

enum GenresRequestMock: RequestProtocol {
    case fetchGenres

    var path: String {
        guard let path = Bundle.main.path(forResource: "Genres", ofType: "json") else { return "" }
        
        return path
    }
    
    var requestType: RequestType {
        .get
    }
}
