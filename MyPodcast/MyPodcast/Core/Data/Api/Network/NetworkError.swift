//
//  NetworkError.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

public enum NetworkError: LocalizedError {
    case failedResponse
    case failedDecoding
    case invalidUrl
    case invalidData
    case offline
    case unauthorized
    case unexpectedStatusCode
    case decode
    case unknown
    case invalidServerResponse
    
    public var customMessage: String {
        switch self {
        case .failedResponse:
            return "Error: Failed response"
        case .failedDecoding:
            return "Error: failed decoding"
        case .invalidUrl:
            return "Error: invalid URL"
        case .invalidData:
            return "Error: invalid data"
        case .invalidServerResponse:
            return "Error: invalid server response"
        default:
            return "Unknown error"
        }
    }
}
