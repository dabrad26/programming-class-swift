//
//  ContentView.swift
//  SliderColorsSwiftUI
//
//  Created by David Bradshaw on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var red = 0.5
    @State private var green = 0.5
    @State private var blue = 0.5
    
    var body: some View {
        VStack {
            Spacer()
            HStack() {
                Text("Red")
                    .frame(width: 50, alignment: .leading)
                Slider(value: $red)
            }
            HStack() {
                Text("Green")
                    .frame(width: 50, alignment: .leading)
                Slider(value: $green)
            }
            HStack() {
                Text("Blue")
                    .frame(width: 50, alignment: .leading)
                Slider(value: $blue)
            }
            Spacer()
        }
        .padding()
        .background(Color.init(red: red, green: green, blue: blue))
    }
}

#Preview {
    ContentView()
}
