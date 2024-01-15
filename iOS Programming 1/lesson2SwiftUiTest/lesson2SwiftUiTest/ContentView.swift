//
//  ContentView.swift
//  lesson2SwiftUiTest
//
//  Created by David Bradshaw on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack {
            Text(message.uppercased())
            TextField("Enter text here", text: $message)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
