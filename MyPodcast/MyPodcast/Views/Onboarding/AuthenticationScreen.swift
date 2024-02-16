//
//  AuthenticationScreen.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct AuthenticationScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .scaledToFit()
                    .cornerRadius(48)

                Spacer()
                NavigationLink(destination: MainScreen()) {
                    Text("LOGIN")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                }

                NavigationLink(destination: MainScreen()) {
                    Text("SIGNUP")
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

struct AuthenticationScreen_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationScreen()
    }
}
