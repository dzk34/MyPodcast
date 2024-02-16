//
//  ProfileScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        PodcastListView()
            .environmentObject(ModelData())
    }
}

struct MyListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
