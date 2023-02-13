//
//  ExploreItem.swift
//  MyPodcast
//
//  Created by khaled on 13/02/2023.
//

import SwiftUI

struct ExploreItem: View {
    var podcast: Podcast

    var body: some View {
        VStack(alignment: .leading) {
            Text(podcast.title)
            Image(podcast.image)
                .resizable()
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
