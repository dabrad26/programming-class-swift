//
//  ContentView.swift
//  Assignment6
//
//  Created by David Bradshaw on 10/28/24.
//

import SwiftUI

class Broadcast: ObservableObject {
    @Published var list: [Person] = [
        Person(firstName: "David", lastName: "Bradshaw", isAdmin: true)
    ]
}

struct ContentView: View {
    @ObservedObject var personsList = Broadcast()

    var body: some View {
        TabView {
            ListView(list: $personsList.list)
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("List View")
                }
            FormView()
                .tabItem {
                    Image(systemName: "pencil.and.list.clipboard")
                    Text("Form View")
                }
        }
        .environmentObject(personsList)
        .tabViewStyle(.page)
        .background(Color.blue)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
