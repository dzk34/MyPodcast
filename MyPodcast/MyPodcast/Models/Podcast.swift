//
//  Podcast.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import Foundation

struct Podcast: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var image: String
    var date: String
    var url: String
    
//    static var sampleData: [ToDo] {
//        [
//            Podcast(id: 1, title: "Podcast title 1", description: <#T##String#>, image: <#T##String#>, date: <#T##Date#>, url: <#T##String#>)
//        ]
//    }
}
