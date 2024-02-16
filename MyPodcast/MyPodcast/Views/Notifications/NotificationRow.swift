//
//  NotificationRow.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct NotificationRow: View {
    var notification: Notification
    
    var body: some View {
        HStack {
            Text(notification.title)
            
            if !notification.isRead {
                Spacer()
                Image(systemName: "bell")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct NotificationRow_Previews: PreviewProvider {
    static var notifications = ModelData().notifications
    
    static var previews: some View {
        Group {
            NotificationRow(notification: notifications[0])
            NotificationRow(notification: notifications[1])
            NotificationRow(notification: notifications[2])
            NotificationRow(notification: notifications[3])
            NotificationRow(notification: notifications[4])
        }
    }
}
