//
//  ContentView.swift
//  ImageUI
//
//  Created by David Bradshaw on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is my dog")
                .font(.title)
            Image("dog")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
