//
//  RecipeCookingView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 23/02/24.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - Properties
    var recipe: Recipe
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//: HStack
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Prep: \(recipe.preparation)")
            }//: HStack
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Cooking: \(recipe.cooking)")
            }//: HStack
        }//: HStack
        .font(.footnote)
        .foregroundStyle(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: sampleRecipe)
}
