//
//  ExploreScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ExploreScreen: View {
    @State private var searchText = ""
    @ObservedObject var viewModel: ExploreScreenViewModel
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search ...", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                
                ForEach(viewModel.genres) { genre in
                    NavigationLink {
//                        PodcastDetailsScreen(podcast: podcast)
                        GenreDetailScreen(genre: genre)
                    } label: {
                        Divider()
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
