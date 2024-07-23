//
//  InterestsScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct InterestsScreen: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("INTERESTS")
                Spacer()
                Text("Select your interestes and we'll show you inspiring podcasts that you will enjoy")
                Spacer()
                Image("tags-cloud")
                    .resizable()
                    .frame(width: 380, height: 380)
                Spacer()
                NavigationLink(destination: AuthenticationScreen()) {
                    Text("CONTINUE")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                }
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct InterestsScreen_Previews: PreviewProvider {
    static var previews: some View {
        InterestsScreen()
    }
}
