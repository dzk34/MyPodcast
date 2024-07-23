//
//  GenreDetailScreen.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import SwiftUI

struct GenreDetailScreen: View {
    var genre: Genre
    @ObservedObject var viewModel: GenreViewModel

    var body: some View {
        NavigationView {
            List {
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
            .task {
                await viewModel.fetchPodcasts(id: genre.id)
            }
            .padding()
            .listStyle(.plain)
            .navigationTitle("Explore")
        }
    }
}
