//
//  ExploreScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ExploreScreen: View {
    @EnvironmentObject var modelData: MockData
    @State private var searchText = ""
    private let requestManager = RequestManager()
    @State private var podcastsList: [Podcast] = []
    @State var isLoading = true

    var body: some View {
        NavigationView {
            List {
                TextField("Search ...", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                
                ForEach(podcastsList) { podcast in
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
                await fetchPodcasts()
            }
            .listStyle(.plain)
            .navigationTitle("Explore")
        }
    }
    
    func fetchPodcasts() async {
        do {
            let podcastsList2: PodcastList = try await requestManager.perform(PodcastRequest.bestPodcasts)
            
            self.podcastsList = podcastsList2.podcasts

            await stopLoading()
        } catch {}
    }
    
    @MainActor
    func stopLoading() async {
      isLoading = false
    }
}

struct ExploreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreen()
            .environmentObject(MockData())
    }
}
