//
//  NotificationsScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct NotificationsScreen: View {
    @EnvironmentObject var modelData: MockData

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
            .environmentObject(MockData())
    }
}
