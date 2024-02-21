//
//  PodcastListView.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct PodcastListView: View {
    @EnvironmentObject var modelData: MockData

    var body: some View {
        List {
            ForEach(modelData.podcasts) { podcast in
                NavigationLink {
                        PodcastDetailsScreen(podcast: podcast)
                } label: {
                    PodcastRow(podcast: podcast)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView()
            .environmentObject(MockData())
    }
}
