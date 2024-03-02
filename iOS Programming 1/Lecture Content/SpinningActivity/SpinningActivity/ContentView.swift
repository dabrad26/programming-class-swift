//
//  ContentView.swift
//  SpinningActivity
//
//  Created by David Bradshaw on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    let style = StrokeStyle(lineWidth: 5, lineCap: .round)
    let color1 = Color.gray
    let color2 = Color.white

    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.6)
                .stroke(
                    AngularGradient(gradient: .init(colors: [color1, color2]), center: .center), style: style)
                .rotationEffect(Angle(degrees:animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false), value: animate)
        }
        .frame(width: 35, height: 35, alignment: .center)
        .onAppear() {
            self.animate.toggle()
        }
    }
}

#Preview {
    ContentView()
}
