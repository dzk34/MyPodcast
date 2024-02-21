//
//  ProfileScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack {
            VStack {
                Header()
                ProfileText()
            }
            Spacer()
            PodcastListView()
                .environmentObject(MockData())
        }
    }
}

struct Header: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .foregroundColor(Color(red: 150.0, green: 150.0, blue: 150.0, opacity: 1.0))
                .edgesIgnoringSafeArea(.top)
                .frame(height: 100)
            Image("profile-icon")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}

struct ProfileText: View {
    let name = "Profile name"
    let subtitle = "Artist photographer"
    let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non arcu risus quis varius quam. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Ornare suspendisse sed nisi lacus sed viverra tellus. Arcu odio ut sem nulla pharetra. Vitae congue mauris rhoncus aenean vel elit. Scelerisque eu ultrices vitae auctor eu."
    
    var body: some View {
        VStack(spacing: 15) {
            VStack(spacing: 5) {
                Text(name)
                    .bold()
                    .font(.title)
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.secondary)
            }.padding()
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
    }
}
struct MyListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
