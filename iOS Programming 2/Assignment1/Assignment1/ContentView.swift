//
//  ContentView.swift
//  Assignment1
//
//  Created by David Bradshaw on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State var currentText = "";
    
    var body: some View {
        VStack {
            Spacer()
            if (currentText != "") {
                TextRenderView(currentText: $currentText)
            }
            Spacer()
            TextField("Enter text", text: $currentText)
                .padding(.all, 20)
                .border(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
