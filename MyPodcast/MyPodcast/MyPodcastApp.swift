//
//  MyPodcastApp.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
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
