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
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 1
        formatter.minimumFractionDigits = 1
        formatter.numberStyle = .decimal
        return formatter
    }
    
    var body: some View {
        VStack {
            Spacer()
            Stepper(value: $red, in: 0...1, step: 0.1) {
                Text("Red: \(numberFormatter.string(for: red)!)")
            }
                .padding(.bottom)
            Stepper(value: $green, in: 0...1, step: 0.1) {
                Text("Green: \(numberFormatter.string(for: green)!)")
            }
                .padding(.bottom)
            Stepper(value: $blue, in: 0...1, step: 0.1) {
                Text("Blue: \(numberFormatter.string(for: blue)!)")
            }
                .padding(.bottom)
            Spacer()
        }
        .padding()
        .background(Color.init(red: red, green: green, blue: blue))
    }
}

#Preview {
    ContentView()
}
