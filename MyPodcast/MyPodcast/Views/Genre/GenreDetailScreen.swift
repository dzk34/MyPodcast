//
//  GenreDetailScreen.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import SwiftUI

struct GenreDetailScreen: View {
    @ObservedObject var viewModel: GenreViewModel
    var genre: Genre

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.podcasts) { podcast in
                    NavigationLink {
                        PodcastDetailsScreen(podcast: podcast)
                    } label: {
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
            .navigationTitle(genre.name)
        }
    }
}
