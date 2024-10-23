//
//  TurtleView.swift
//  Assignment5
//
//  Created by David Bradshaw on 10/22/24.
//

import SwiftUI

struct TurtleView: View {
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 60))
                .foregroundStyle(.green)
                .padding(.bottom, 40)
            Text("Hello Turtle!").font(.title)
        }.padding()
    }
}

#Preview {
    TurtleView()
}
