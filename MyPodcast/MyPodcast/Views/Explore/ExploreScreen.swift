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
                    Spacer()
                    NavigationLink {
//                        PodcastDetailsScreen(podcast: podcast)
                    } label: {
                        Divider()
//                        ExploreItem(podcast: podcast)
                        Text(genre.name)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
            }
            .task {
                await viewModel.fetchPodcasts()//dzk
            }
            .listStyle(.plain)
            .navigationTitle("Explore")
        }
    }
}
