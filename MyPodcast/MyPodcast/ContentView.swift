//
//  ContentView.swift
//  MyPodcast
//
//  Created by khaledus on 16/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var progressValue: Float = 0.4
    
    var body: some View {
        VStack {
            ProgressView(value: $progressValue).frame(height: 20)
            Spacer()
        }.padding()
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
