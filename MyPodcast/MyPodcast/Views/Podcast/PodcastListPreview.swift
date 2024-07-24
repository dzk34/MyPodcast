//
//  PodcastListView.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct PodcastListPreview: View {
    @InjectedDependency(\.podcastListViewModel) var viewModel: PodcastListViewModel

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
