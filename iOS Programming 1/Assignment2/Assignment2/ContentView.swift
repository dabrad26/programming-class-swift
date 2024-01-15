//
//  ContentView.swift
//  Assignment2
//
//  Created by David Bradshaw on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var currentColor = Color.clear
    @State var currentlyRunning = false
    
    func randomColor() -> Void {
        currentColor = Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if (currentlyRunning) {
                randomColor()
            }
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .center) {
                HStack {
                    Button(currentlyRunning ? "Stop" : "Start") {
                        currentlyRunning = !currentlyRunning;
                        
                        if (currentlyRunning) {
                            randomColor()
                        }
                    }
                    .padding([.top, .bottom], 10)
                    .padding([.leading, .trailing], 20)
                    .background(.blue)
                    .foregroundColor(.white)
                    
                    if (currentColor != Color.clear && !currentlyRunning) {
                        Button("Reset") {
                            currentColor = .clear
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 20)
                        .background(.orange)
                        .foregroundColor(.white)
                    }
                }
                Text("Play random background colors")
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.5))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentColor)
    }
}

#Preview {
    ContentView()
}
