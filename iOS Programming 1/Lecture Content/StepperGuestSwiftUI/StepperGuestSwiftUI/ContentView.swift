//
//  ContentView.swift
//  StepperGuestSwiftUI
//
//  Created by David Bradshaw on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var newValue = 0
    private let stepValue = 2
    
    var body: some View {
        Stepper(value: $newValue, in: 1...100, step: stepValue) {
            Text("Stepping by \(stepValue). Current value: \(newValue)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
