//
//  PodcastDetailsScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct PodcastDetailsScreen: View {
    @State var progressValue: Float = 0.0
    var podcast: Podcast
    
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: podcast.thumbnail))
                        .frame(width: 350, height: 350)
                        .cornerRadius(8)
                    Text(podcast.title)
                        .font(.largeTitle)
                    Spacer()

                    HStack() {
                        ProgressView(value: $progressValue).frame(height: 16)
                        Button {
                            startProgressBar()
                        } label: {
                            Image(systemName: "play.circle")
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    Text("\(podcast.description)")
                    Spacer()
                }
                .padding()
        }
    }
    
    func startProgressBar() {
        progressValue = 0.0
        for _ in 0...80 {
            progressValue += 0.015
        }
    }
}

struct PodcastDetailsScreen_Previews: PreviewProvider {
    static var podcasts = MockData().podcasts

    static var previews: some View {
        PodcastDetailsScreen(podcast: podcasts[0])
    }
}
