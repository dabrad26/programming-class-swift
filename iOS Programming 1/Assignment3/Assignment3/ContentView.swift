//
//  ContentView.swift
//  Assignment3
//
//  Created by David Bradshaw on 1/23/24.
//

import SwiftUI


struct ContentView: View {
    @State private var textValue = ""
    @State private var keyboardType = 0
    
    private func getKeyboard() -> UIKeyboardType {
        switch keyboardType {
        case 0:
            return UIKeyboardType.numberPad
        case 1:
            return UIKeyboardType.default
        case 2:
            return UIKeyboardType.URL
        case 3:
            return UIKeyboardType.emailAddress
        case 4:
            return UIKeyboardType.twitter
        default:
            return UIKeyboardType.default
        }
    }
    
    var body: some View {
        VStack {
            Text(textValue)
                .font(.headline)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.red)
            Spacer()
            Text("Choose a keyboard type")
                .font(.callout)
                .multilineTextAlignment(.center)
            Picker(selection: $keyboardType, label: Text("Choose a keyboard type")) {
                Text("Number Pad").tag(0)
                Text("Regular").tag(1)
                Text("URL").tag(2)
                Text("Email").tag(3)
                Text("Twitter").tag(4)
            }
            Spacer()
            TextField("Enter text here", text: $textValue)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .keyboardType(getKeyboard())
        }
        .padding()
        .contentShape(Rectangle())
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

#Preview {
    ContentView()
}
