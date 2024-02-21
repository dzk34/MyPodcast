//
//  PodcastListView.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct PodcastListView: View {
    @ObservedObject var viewModel: PodcastListViewModel

    var body: some View {
        List {
            ForEach(viewModel.podcasts) { podcast in
                NavigationLink {
                        PodcastDetailsScreen(podcast: podcast)
                } label: {
                    PodcastRow(podcast: podcast)
                }
            }
        }
        .task {
            await viewModel.fetchPodcasts()
        }
        .listStyle(.plain)
    }
}

struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView(
            viewModel: PodcastListViewModel(podcastListFetcher: PodcastListService(requestManager: RequestManager())))
    }
}
