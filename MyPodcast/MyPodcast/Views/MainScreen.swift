//
//  MainScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct MainScreen: View {
    @State private var selection: Tab = .home
    @EnvironmentObject var viewModelFactory: ViewModelFactory
    
    enum Tab {
        case home
        case explore
        case mylist
        case notifications
    }

    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)            

            ExploreScreen()
                .tabItem {
                    Label("Explore", systemImage: "signpost.right.and.left")
                }
                .tag(Tab.explore)

            NotificationsScreen()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(Tab.notifications)

            // ToDo: implement once Firebase is integrated with authentication...
//            ProfileScreen()
//                .tabItem {
//                    Label("My Profile", systemImage: "person.crop.circle")
//                }
//                .tag(Tab.mylist)
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
