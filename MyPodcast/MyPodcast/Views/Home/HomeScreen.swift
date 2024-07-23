//
//  HomeScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel: HomeScreenViewModel

    var body: some View {
        NavigationStack {
            List {
                Text("Best Podcasts")
                ForEach(viewModel.podcasts) { podcast in
                    Spacer()
                    NavigationLink {
                        PodcastDetailsScreen(podcast: podcast)
                    } label: {
                        Divider()
                        ExploreItem(podcast: podcast)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
        .task {
            await viewModel.fetchPodcasts()
        }

        .padding(.top)
    }
}
