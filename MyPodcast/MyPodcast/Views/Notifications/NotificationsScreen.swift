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
//            Text("Notifications Screen")
            List {
                ForEach(modelData.notifications) { notification in
                    NavigationLink {
                        MyListScreen()
                    } label: {
                        NotificationRow(notification: notification)
                    }
                }
            }
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
            .environmentObject(ModelData())
    }
}
