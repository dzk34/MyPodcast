//
//  AuthenticationScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import SwiftUI

struct AuthenticationScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: MainScreen()) {
                    Text("LOGIN")
                }

                NavigationLink(destination: MainScreen()) {
                    Text("SIGNUP")
                }
            }
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
