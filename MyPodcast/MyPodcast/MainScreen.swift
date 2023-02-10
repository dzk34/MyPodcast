//
//  MainScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ExploreScreen()
                .tabItem {
                    Label("Explore", systemImage: "signpost.right.and.left")
                }

            MyListScreen()
                .tabItem {
                    Label("My List", systemImage: "list.star")
                }

            NotificationsScreen()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
