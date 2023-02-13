//
//  NotificationsScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import SwiftUI

struct NotificationsScreen: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.notifications) { notification in
                    NavigationLink {
                        if let podcast = notification.podcast {
                            PodcastDetailsScreen(podcast: podcast)
                        }
                    } label: {
                        NotificationRow(notification: notification)
                    }
                }
            }
            .navigationTitle("Notifications")
            .listStyle(.plain)
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
            .environmentObject(ModelData())
    }
}
