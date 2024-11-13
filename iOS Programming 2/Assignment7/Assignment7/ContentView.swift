//
//  ContentView.swift
//  Assignment7
//
//  Created by David Bradshaw on 11/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var lastClickedDog = true;
    private var colors = [Color.teal, Color.cyan, Color.green]
    
    var body: some View {
        VStack {
            Button {
                playSound(sound: "DogWoof", type: "mp3")
                lastClickedDog = true
            } label: {
                Image("Dog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            Button {
                playSound(sound: "CatMeow", type: "mp3")
                lastClickedDog = false
            } label: {
                Image("Cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Gradient(colors: lastClickedDog ? colors : colors.reversed()).opacity(0.6))
    }
}

#Preview {
    ContentView()
}
