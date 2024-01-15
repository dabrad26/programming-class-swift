//
//  ContentView.swift
//  lesson2SwiftUiColorTest
//
//  Created by David Bradshaw on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 250.0, height: 150)
                .foregroundColor(backgroundColor)
            HStack {
                Button("Red") {
                    backgroundColor = .red
                }
                Button("Green") {
                    backgroundColor = .green
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
