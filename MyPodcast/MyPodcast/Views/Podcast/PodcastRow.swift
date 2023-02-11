//
//  PodcastRow.swift
//  MyPodcast
//
//  Created by khaled on 11/02/2023.
//

import SwiftUI

struct PodcastRow: View {
    var podcast: Podcast

    var body: some View {
        HStack(alignment: .top) {
            Image(podcast.image)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(podcast.title)
                Text(podcast.date)
                    .foregroundColor(.gray)
            }
            
            Image(systemName: "play.circle.fill")
                .foregroundColor(.blue)
        }
    }
}

struct PodcastRow_Previews: PreviewProvider {
    static var podcasts = ModelData().podcasts

    static var previews: some View {
        Group {
            PodcastRow(podcast: podcasts[0])
            PodcastRow(podcast: podcasts[1])
            PodcastRow(podcast: podcasts[2])
        }
    }
}
