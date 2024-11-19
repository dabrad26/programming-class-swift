//
//  ContentView.swift
//  Assignment9
//
//  Created by David Bradshaw on 11/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ImageView(imageName: "cat")
                .tabItem {
                    Label("Cat", systemImage: "cat.fill")
                }

            ImageView(imageName: "dog")
                .tabItem {
                    Label("Dog", systemImage: "dog.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
