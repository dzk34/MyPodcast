//
//  PodcastListView.swift
//  MyPodcast
//
//  Created by khaled on 11/02/2023.
//

import SwiftUI

struct PodcastListView: View {
    @EnvironmentObject var modelData: ModelData

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
            .environmentObject(ModelData())
    }
}
