//
//  PersonView.swift
//  Assignment5
//
//  Created by David Bradshaw on 10/22/24.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .font(.system(size: 60))
                .foregroundStyle(.red)
                .padding(.bottom, 40)
            Text("Hello Person!").font(.title)
        }.padding()
    }
}

#Preview {
    PersonView()
}
