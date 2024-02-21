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
                await viewModel.fetchPodcasts()
            }
            .listStyle(.plain)
            .navigationTitle("Explore")
        }
    }
}

struct ExploreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreen(
            viewModel: ExploreScreenViewModel(exploreScreenFetcher: ExploreScreenService(requestManager: RequestManager())))
    }
}
