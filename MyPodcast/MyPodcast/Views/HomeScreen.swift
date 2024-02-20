//
//  HomeScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var modelData: MockData

    var body: some View {
        NavigationView {
            List {
                if let featuredPodcast = modelData.featured {
                    AsyncImage(url: URL(string: featuredPodcast.thumbnail))
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .listRowInsets(EdgeInsets())
                }
                
                ForEach(modelData.categories.keys.sorted(), id:\.self) { key in
                    Spacer()
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(MockData())
    }
}
