//
//  ProfileRequest.swift
//  MyPodcast
//
//  Created by khaledus on 21/02/2024.
//

import Foundation

enum ProfileRequest: RequestProtocol {
    case myProfile
    case fecthProfile(id: String)
    case followers

    var path: String {
        switch self {
        case .myProfile:
            return ""
        case .fecthProfile(let id):
            return "/\(id)"
        case .followers:
            return ""
        }
    }
    
    var requestType: RequestType {
        .get
    }
}
