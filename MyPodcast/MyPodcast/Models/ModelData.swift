//
//  ModelData.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var notifications: [Notification] = load("Notifications.json")
    @Published var podcasts: [Podcast] = load("Podcasts.json")
    
    var categories: [String: [Podcast]] {
        Dictionary(
            grouping: podcasts,
            by: { $0.category.rawValue }
        )
    }

    var featured: Podcast? {
        podcasts.randomElement()
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
