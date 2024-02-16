//
//  LandingScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct LandingScreen: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .scaledToFit()
                    .cornerRadius(48)
                Spacer()
                Text("Discover podcasts, listen everywhere and share with your friends")
                Spacer()
                NavigationLink(destination: InterestsScreen()) {
                    Text("START")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}

struct LandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen()
    }
}
