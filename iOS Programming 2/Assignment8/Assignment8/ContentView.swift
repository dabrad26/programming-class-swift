//
//  ContentView.swift
//  Assignment8
//
//  Created by David Bradshaw on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var runAnimation = false
    @State private var speed = 1.0

    private var foreverAnimation: Animation {
        Animation.linear(duration: 2.0)
            .repeatForever(autoreverses: false)
            .speed(speed)
    }
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "apps.iphone")
                .font(.system(size: 190))
                .foregroundStyle(.orange)
                .rotationEffect(
                    Angle(
                        degrees: runAnimation ? (isAnimating ? 360 : 0.0) : 0.0)
                )
                .animation(
                    (isAnimating && runAnimation) ? foreverAnimation : .default
                )
                .onAppear { isAnimating = true }
                .onDisappear { isAnimating = false }
            Spacer()
            Button("\(runAnimation ? "Stop" : "Start") Spinning the Phone") {
                runAnimation.toggle()
            }
            .padding(.bottom)
            Slider(
                value: $speed,
                in: 0.1...10.0,
                onEditingChanged: { editing in
                    isAnimating = !editing
                    }
            )
            Text("Speed: \(speed, specifier: "%.2f")")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
