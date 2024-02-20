//
//  ExploreItem.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ExploreItem: View {
    var podcast: Podcast

    var body: some View {
        VStack(alignment: .leading) {
            Text(podcast.title)
            AsyncImage(url: URL(string: podcast.thumbnail))
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
                .cornerRadius(8)
            Text(podcast.description)
        }
    }
}

struct ExploreItem_Previews: PreviewProvider {
    static var previews: some View {
        ExploreItem(podcast: ModelData().featured!)
    }
}
