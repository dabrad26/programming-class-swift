//
//  ContentView.swift
//  Assignment5
//
//  Created by David Bradshaw on 10/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Tab("Rabbit", systemImage: "hare.fill") {
                    RabbitView()
                }
                .badge(21)


                Tab("Turtle", systemImage: "tortoise.fill") {
                    TurtleView()
                }


                Tab("Person", systemImage: "person.fill") {
                    PersonView()
                }
                .badge("?")
            }
        }
    }
}

#Preview {
    ContentView()
}
