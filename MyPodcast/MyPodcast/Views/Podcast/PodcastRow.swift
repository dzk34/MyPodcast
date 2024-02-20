//
//  PodcastRow.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct PodcastRow: View {
    @State var progressValue: Float = 0.4
    var podcast: Podcast

    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: podcast.thumbnail))
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(podcast.title)
            }
            
            Image(systemName: "play.circle.fill")
                .foregroundColor(.blue)
        }
    }
    
    func startProgressBar() {
        for _ in 0...80 {
            self.progressValue += 0.015
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
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
