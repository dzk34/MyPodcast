//
//  InterestsScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import SwiftUI

struct InterestsScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("INTERESTS")
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
