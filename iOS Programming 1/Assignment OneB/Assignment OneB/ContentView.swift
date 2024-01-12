//
//  ContentView.swift
//  Assignment OneB
//
//  Created by David Bradshaw on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is my Vertical Stack!").padding(16)
            Text("This is an additioanl text item!")
                .padding(16)
                .border(Color.pink)
            Text("This is the third text item!").padding(16)
        }
    }
}

#Preview {
    ContentView()
}
