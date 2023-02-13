//
//  PodcastItem.swift
//  MyPodcast
//
//  Created by khaled on 12/02/2023.
//

import SwiftUI

struct PodcastItem: View {
    var podcast: Podcast

    var body: some View {
        VStack(alignment: .leading) {
            Image(podcast.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(16)

            Text(podcast.title)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct PodcastItem_Previews: PreviewProvider {
    static var previews: some View {
        PodcastItem(podcast: ModelData().featured!)
    }
}
