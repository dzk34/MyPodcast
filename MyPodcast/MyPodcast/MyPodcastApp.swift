//
//  MyPodcastApp.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

@main
struct MyPodcastApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            LandingScreen()
                .environmentObject(modelData)
        }
    }
}
