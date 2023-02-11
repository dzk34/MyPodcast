//
//  PodcastDetailsScreen.swift
//  MyPodcast
//
//  Created by khaled on 11/02/2023.
//

import SwiftUI

struct PodcastDetailsScreen: View {
    var podcast: Podcast
    
    var body: some View {
        ScrollView(showsIndicators: false) {
//            NavigationView {
                VStack(alignment: .leading) {
                    Image(podcast.image)
                        .resizable()
                        .frame(width: 350, height: 350)
                        .cornerRadius(8)
                    Text(podcast.title)
                        .font(.largeTitle)
                    Text(podcast.date)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(podcast.description)")
                    Spacer()
                    HStack() {
                        Text("duration")
                        Button {} label: {
                            Image(systemName: "play.circle")
                                .foregroundColor(.black)
                        }
                    }
//                    PodcastListView()
//                        .environmentObject(ModelData())
//                    Text("duration2")
                }
                .padding()
//            }
        }
    }
}

struct PodcastDetailsScreen_Previews: PreviewProvider {
    static var podcasts = ModelData().podcasts

    static var previews: some View {
        PodcastDetailsScreen(podcast: podcasts[0])
    }
}
