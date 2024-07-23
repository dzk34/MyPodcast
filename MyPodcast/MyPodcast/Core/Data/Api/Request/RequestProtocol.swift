//
//  RequestProtocol.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

enum RequestType: String {
    case get
    case post
    case put
    case patch
    case delete
}

protocol RequestProtocol {
    var path: String { get }
    var headers: [String: String] { get }
    var params: [String: Any] { get }
    var urlParams: [String: String?] { get }
    var requestType: RequestType { get }
}

extension RequestProtocol {
    var host: String {
        APIConstants.host
    }

    var scheme: String {
        APIConstants.scheme
    }

    var params: [String: Any] {
        [:]
    }

    var urlParams: [String: String?] {
        [:]
    }

    var headers: [String: String] {
        [:]
    }
    
    func createURLRequest() throws -> URLRequest {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path

        if !urlParams.isEmpty {
            components.queryItems = urlParams.map {
                URLQueryItem(name: $0, value: $1)
            }
        }

          guard let url = components.url
          else { throw NetworkError.invalidUrl }

          var urlRequest = URLRequest(url: url)
          urlRequest.httpMethod = requestType.rawValue

        if !headers.isEmpty {
            urlRequest.allHTTPHeaderFields = headers
        }

        urlRequest.setValue(APIConstants.apiKey, forHTTPHeaderField: "X-ListenAPI-Key")

        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")

        if !params.isEmpty {
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: params)
        }

        return urlRequest
    }
}
