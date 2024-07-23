//
//  HomeScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct HomeScreen: View {
//    @EnvironmentObject var modelData: MockData
    @ObservedObject var viewModel: HomeScreenViewModel

    var body: some View {
        NavigationView {
            List {
                Text("Podcasts")
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
                
                //                ForEach(viewModel.categories.keys.sorted(), id:\.self) { key in
                //                    Spacer()
                //                    CategoryRow(categoryName: key, items: viewModel.categories[key]!)
                //                }
                //                .listRowInsets(EdgeInsets())
                //                .listRowSeparator(.hidden)

                
//                if let featuredPodcast = viewModel.podcasts.first {
//                    AsyncImage(url: URL(string: featuredPodcast.thumbnail))
//                        .aspectRatio(contentMode: .fill)
//                        .frame(height: 250)
//                        .clipped()
//                        .listRowInsets(EdgeInsets())
//                }
                
//                ForEach(viewModel.categories.keys.sorted(), id:\.self) { key in
//                    Spacer()
//                    CategoryRow(categoryName: key, items: viewModel.categories[key]!)
//                }
//                .listRowInsets(EdgeInsets())
//                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .task {
            await viewModel.fetchPodcasts()//dzk
        }

        .padding(.top)
    }
}

//struct HomeScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreen()
//            .environmentObject(MockData())
//    }
//}
