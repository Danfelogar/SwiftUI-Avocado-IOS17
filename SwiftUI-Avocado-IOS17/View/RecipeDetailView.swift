//
//  RecipeDetailView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 23/02/24.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - Properties
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                //img
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    //Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    //Rating
                    RecipeRatingView(recipe: recipe)
                    //Cooking
                    RecipeCookingView(recipe: recipe)
                    //Ingredients
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading,spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            VStack {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }//: VStack
                        }//: Loop
                    }//: VStack
                    //Instructions
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    ForEach(recipe.instructions, id: \.self) { instruction in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(Color("ColorGreenAdaptive"))
                            
                            Text(instruction)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }//: VStack
                    }//Loop
                }// :Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }//: VStack
        }//: Scroll
        .ignoresSafeArea(edges:.top)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(Color.pink)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .onAppear {
                                withAnimation(Animation.easeInOut(duration:  1.5).repeatForever(autoreverses: true)) {
                                    pulsate.toggle()
                                }
                            }
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }//: VStack
            }//: HStack
        }
        .onAppear() {
            pulsate.toggle()
        }
    }
}

#Preview {
    RecipeDetailView(recipe: sampleRecipe)
}
