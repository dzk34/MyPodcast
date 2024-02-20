//
//  MainScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct MainScreen: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case explore
        case home
        case mylist
        case notifications
    }

    var body: some View {
        TabView {
            ExploreScreen(viewModel: ExploreScreenViewModel())
                .tabItem {
                    Label("Explore", systemImage: "signpost.right.and.left")
                }
                .tag(Tab.explore)

            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)            

            NotificationsScreen()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(Tab.notifications)

            ProfileScreen()
                .tabItem {
                    Label("My Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.mylist)
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
