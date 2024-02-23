//
//  AvocadosView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - Properties
    @State private var pulsateAnimation: Bool = false
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x:0, y:0)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y:4)
                Text("""
                Creamy, green, and full of nutrients!
                Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundStyle(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }//: VStack
            .padding()

            Spacer()

        }//: VStack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .ignoresSafeArea(edges: .all)
        .onAppear(perform: {
            pulsateAnimation.toggle()
        })
    }
}

#Preview {
    AvocadosView()
}
