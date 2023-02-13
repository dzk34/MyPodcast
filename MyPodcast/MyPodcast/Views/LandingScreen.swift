//
//  LandingScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
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
