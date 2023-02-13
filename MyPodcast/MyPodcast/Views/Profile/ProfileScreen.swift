//
//  ProfileScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
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
