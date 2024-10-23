//
//  ProductItem.swift
//  Assignment2-2
//
//  Created by David Bradshaw on 10/1/24.
//

import Foundation
import SwiftUICore

struct ProductItem: Identifiable {
    var name: String
    var revenue: Int
    var color: Color;
    var id = UUID()
}
