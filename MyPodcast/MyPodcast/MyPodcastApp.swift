//
//  MyPodcastApp.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

@main
struct MyPodcastApp: App {
    @StateObject private var modelData = MockData()
    let viewModelFactory = ViewModelFactory()
    
    var body: some Scene {
        WindowGroup {
            LandingScreen()
                .environmentObject(modelData)
                .environmentObject(viewModelFactory)
        }
    }
}
