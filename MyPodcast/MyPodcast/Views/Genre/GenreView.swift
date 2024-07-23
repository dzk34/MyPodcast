//
//  GenreView.swift
//  MyPodcast
//
//  Created by khaledus on 23/07/2024.
//

import SwiftUI

struct GenreView: View {
    let genre: Genre

    var body: some View {
        HStack {
            Spacer()
            Text(genre.name)
                .font(.title)
            Spacer()
        }
        .padding(.vertical, 40)
        .background(Color.random(randomOpacity: true))
    }
}

#Preview {
    GenreView(genre: Genre(id: 1, name: "Sport Podcasts", parentId: 0))
}
