//
//  NetworkService.swift
//  MyPodcast
//
//  Created by khaled on 11/02/2023.
//

import Foundation
import Combine

protocol NetworkServiceable {
    func getPodcasts() -> AnyPublisher<[Podcast], Never>
}

class NetworkService: NetworkServiceable {
    let urlSession: URLSession
    let baseURLString: String

    init(urlSession: URLSession = .shared, baseURLString: String) {
        self.urlSession = urlSession
        self.baseURLString = baseURLString
    }
    
    func getPodcasts() -> AnyPublisher<[Podcast], Never> {
        let urlString = baseURLString + "posts"

        guard let url = URL(string: urlString) else {
            return Just<[Podcast]>([]).eraseToAnyPublisher()
        }

        return urlSession.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Podcast].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
    }
}
