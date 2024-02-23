//
//  RecipeRatingView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 23/02/24.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - Properties
    var recipe: Recipe
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(Color.yellow)
            }//: Loop
        }//: HStack
    }
}

#Preview {
    RecipeRatingView(recipe: sampleRecipe)
}
