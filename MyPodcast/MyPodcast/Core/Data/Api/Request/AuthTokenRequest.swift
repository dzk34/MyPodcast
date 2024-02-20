//
//  AuthTokenRequest.swift
//  MyPodcast
//
//  Created by khaledus on 20/02/2024.
//

import Foundation

enum AuthTokenRequest: RequestProtocol {
    case auth

    var path: String {
        "AuthUrl"
    }

    var params: [String: Any] {
        [
            "grant_type": APIConstants.clientCredentials,
            "client_id": APIConstants.clientId,
            "client_secret": APIConstants.clientSecret
        ]
    }

    var addAuthorizationToken: Bool { false }

    var requestType: RequestType { .POST }
}
