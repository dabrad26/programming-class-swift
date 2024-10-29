//
//  Person.swift
//  Assignment6
//
//  Created by David Bradshaw on 10/28/24.
//

import Foundation

struct Person: Identifiable {
    var firstName: String
    var lastName: String
    var isAdmin: Bool
    let id = UUID()
}
