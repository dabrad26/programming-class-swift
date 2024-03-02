//
//  ContentView.swift
//  Assignment7
//
//  Created by David Bradshaw on 2/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.green
    @State private var selectedDevice = "macbook.gen2"
    
    private var deviceMap: [String: String] = [
        "macbook.gen2": "Macbook",
        "iphone.gen3": "iPhone",
        "ipad.landscape": "iPad",
        "ipod": "iPod",
    ]
    
    private var colorMap: [Color: String] = [
        Color.green: "Green",
        Color.black: "Black",
        Color.red: "Red",
        Color.orange: "Orange",
    ]
    
    var body: some View {
        VStack {
            Form {
                Section("Change settings") {
                    Picker("Color", selection: $selectedColor) {
                        ForEach(Array(colorMap), id: \.key) { key, value in
                            Text(value).tag(key)
                        }
                    }
                    Picker("Device", selection: $selectedDevice) {
                        ForEach(deviceMap.sorted(by: >), id: \.key) { key, value in
                            Text(value).tag(key)
                        }
                    }
                }
                VStack {
                    Text("Selected a \((colorMap[selectedColor] ?? "").lowercased()) \(deviceMap[selectedDevice] ?? "")!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    Image(systemName: selectedDevice)
                        .resizable()
                        .foregroundColor(selectedColor)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: .infinity, alignment: .center)
                        .padding(24)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
