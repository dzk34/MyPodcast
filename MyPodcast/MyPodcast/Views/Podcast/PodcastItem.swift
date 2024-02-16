//
//  PodcastItem.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
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
