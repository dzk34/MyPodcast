//
//  InterestsScreen.swift
//  MyPodcast
//
//  Created by khaled on 10/02/2023.
//

import SwiftUI

struct InterestsScreen: View {
    var data = ["News", "Sport", "Career","Health"]

    var body: some View {
        NavigationView {
            VStack {
                Text("INTERESTS")
                Spacer()
                ForEach((0...data.count-1), id: \.self) { item in
                    Button {
                    } label: {
                        Text("\(data[item])")
                    }
                    .border(.red)
                    .cornerRadius(1)
                }
                Spacer()
                NavigationLink(destination: AuthenticationScreen()) {
                    Text("CONTINUE")
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
