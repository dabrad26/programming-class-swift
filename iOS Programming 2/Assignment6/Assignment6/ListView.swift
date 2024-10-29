//
//  ListView.swift
//  Assignment6
//
//  Created by David Bradshaw on 10/28/24.
//

import SwiftUI

struct ListView: View {
    @Binding var list: [Person]

    var body: some View {

        List {
            ForEach($list) { item in
                Text(
                    "\(item.firstName.wrappedValue) \(item.lastName.wrappedValue)\(item.isAdmin.wrappedValue ? "*" : "")"
                )
            }
        }
        .scrollContentBackground(.hidden)
    }
}
