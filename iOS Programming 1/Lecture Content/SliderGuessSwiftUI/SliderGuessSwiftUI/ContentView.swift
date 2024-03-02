//
//  ContentView.swift
//  SliderGuessSwiftUI
//
//  Created by David Bradshaw on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var newValue = 0.0
    
    private var numFormatter: NumberFormatter {
        var numberFormat = NumberFormatter()
        numberFormat.numberStyle = .decimal
        numberFormat.maximumFractionDigits = 2
        numberFormat.minimumFractionDigits = 2
        return numberFormat
    }
    
    var body: some View {
        VStack {
            Text("Slider value is \(numFormatter.string(for: newValue)!)")
            Slider(value: $newValue, in: 0...20, step: 2.5)
                .accentColor(.pink)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
