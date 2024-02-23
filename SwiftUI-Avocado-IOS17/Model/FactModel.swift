//
//  FactModel.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
