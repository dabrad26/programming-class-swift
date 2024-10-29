//
//  FormView.swift
//  Assignment6
//
//  Created by David Bradshaw on 10/28/24.
//

import SwiftUI

struct FormView: View {
    @EnvironmentObject var personList: Broadcast
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var isAdmin: Bool = false

    private func addToList() {
        personList.list.append(
            Person(firstName: firstName, lastName: lastName, isAdmin: isAdmin))
        firstName = ""
        lastName = ""
        isAdmin = false
    }

    var body: some View {
        Form {
            Section {
                TextField("First name", text: $firstName)
                TextField("Last name", text: $lastName)
                Toggle(isOn: $isAdmin) {
                    Text("Is Admin")
                }
                Button(action: addToList) {
                    Text("Add to list")
                }
            } header: {
                Text("Add person to list").foregroundStyle(Color.white)
            }
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    FormView()
}
