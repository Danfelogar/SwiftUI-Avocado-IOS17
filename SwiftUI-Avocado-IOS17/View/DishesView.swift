//
//  DishesView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            //1st Column
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }//: HStack
                Divider()
                HStack() {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tocas")
                }//: HStack
                Divider()
                HStack() {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }//: HStack
                Divider()
                HStack() {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }//: HStack
            }// :VStack

            //2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }//: HStack
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }//: HStack
                
            }//: VStack

            //3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Guacamole")

                    Spacer()

                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }//: HStack
                Divider()
                HStack() {
                    Text("Sandwich")

                    Spacer()

                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }//: HStack
                Divider()
                HStack() {
                    Text("Soup")

                    Spacer()

                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }//: HStack
                Divider()
                HStack() {
                    Text("Smoothie")

                    Spacer()

                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }//: HStack
            }// :VStack
        }//: HStack
        .font(.system(.callout, design: .serif))
        .foregroundStyle(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    
    static var previews: some View {
        DishesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
