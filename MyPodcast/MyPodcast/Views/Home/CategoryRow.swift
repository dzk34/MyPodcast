//
//  CategoryRow.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Podcast]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { podcast in
                        NavigationLink {
                            PodcastDetailsScreen(podcast: podcast)
                        } label: {
                            PodcastItem(podcast: podcast)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var podcasts = MockData().podcasts

    static var previews: some View {
        CategoryRow(categoryName: podcasts[0].title, items: Array(podcasts.prefix(3)))
    }
}
