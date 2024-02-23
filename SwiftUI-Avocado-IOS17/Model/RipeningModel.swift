//
//  RipeningModel.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 23/02/24.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
