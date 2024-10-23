//
//  RabbitView.swift
//  Assignment5
//
//  Created by David Bradshaw on 10/22/24.
//

import SwiftUI

struct RabbitView: View {
    var body: some View {
        VStack {
            Image(systemName: "hare.fill")
                .font(.system(size: 60))
                .foregroundStyle(.blue)
                .padding(.bottom, 40)
            Text("Hello Rabbit!").font(.title)
        }.padding()
    }
}

#Preview {
    RabbitView()
}
