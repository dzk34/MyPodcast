//
//  ExploreScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ExploreScreen: View {
    @InjectedDependency(\.exploreScreenViewModel) var viewModel: ExploreScreenViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.genres) { genre in
                    NavigationLink {
                        GenreDetailScreen(genre: genre)
                    } label: {
                        GenreView(genre: genre)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
            }
            .task {
                await viewModel.fetchGenres()
            }
            .padding()
            .listStyle(.plain)
            .navigationTitle("Explore")
        }
    }
}
