//
//  ContentView.swift
//  Assignment3
//
//  Created by David Bradshaw on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var yearOfBirth = 1990
    @State private var isAdmin = false
    private var currentYear = Calendar.current.component(.year, from: Date())
    private var startYear = 1900

    private func isFormInvalid() -> Bool {
        return (name == "" || email == "")
    }

    private func setYearOfBirthSafely(_ birthYear: Int = 0) {
        if birthYear < startYear || birthYear > currentYear {
            yearOfBirth = 1990
        } else {
            yearOfBirth = birthYear
        }
    }

    private func saveLocal() {
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(yearOfBirth, forKey: "yearOfBirth")
        UserDefaults.standard.set(isAdmin, forKey: "isAdmin")
    }

    private func loadLocal() {
        name = UserDefaults.standard.string(forKey: "name") ?? ""
        email = UserDefaults.standard.string(forKey: "email") ?? ""
        setYearOfBirthSafely(
            UserDefaults.standard.integer(forKey: "yearOfBirth"))
        isAdmin = UserDefaults.standard.bool(forKey: "isAdmin")
    }

    private func getFileUrl() -> URL? {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        return urls.last?.appendingPathComponent("user.json")
    }

    private func saveFile() {
        if let url = getFileUrl() {
            do {
                let jsonObject: [String: Any] = [
                    "name": name,
                    "email": email,
                    "yearOfBirth": yearOfBirth,
                    "isAdmin": isAdmin,
                ]

                let data = try JSONSerialization.data(
                    withJSONObject: jsonObject, options: [.prettyPrinted])

                try data.write(to: url, options: [.atomicWrite])
            } catch {
                print("Unable to save file: \(error)")
            }
        } else {
            print("Unable to save files from URL")
        }
    }

    private func loadFile() {
        if let url = getFileUrl() {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(User.self, from: data)

                name = jsonData.name ?? ""
                email = jsonData.email ?? ""
                isAdmin = jsonData.isAdmin ?? false
                setYearOfBirthSafely(jsonData.yearOfBirth ?? 0)
            } catch {
                print("Unable to load file: \(error)")
            }
        } else {
            print("Unable to load file URL")
        }
    }

    var body: some View {
        List {
            Section {
                TextField("Name", text: $name)
                    .keyboardType(.namePhonePad)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                Picker("Year of birth", selection: $yearOfBirth) {
                    ForEach((startYear...currentYear), id: \.self) {
                        Text(String($0)).tag($0)
                    }
                }
                Toggle("Is Admin", isOn: $isAdmin)
            } header: {
                Text("User form")
            }

            Section {
                Button(action: saveLocal) {
                    Text("Save to User Defaults")
                }
                .disabled(isFormInvalid())
                Button(action: loadLocal) {
                    Text("Load from User Defaults")
                }
                Button(action: saveFile) {
                    Text("Save to file")
                }
                .disabled(isFormInvalid())
                Button(action: loadFile) {
                    Text("Load from file")
                }
            } header: {
                Text("Actions")
            }
        }
    }
}

#Preview {
    ContentView()
}
