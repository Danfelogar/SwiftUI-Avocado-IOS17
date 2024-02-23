//
//  SettingsView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - Header
            VStack(alignment: .center, spacing: 0) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x:0, y:4)
                
                Text("Avocado".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenAdaptive"))
            }//: VStack
            .padding()
            
            Form {
                //MARK: - Section #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Enable refresh")
                    }
                }
                //MARK: - Section #2
                Section(header: Text("General Settings")){
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }//: HStack

                        HStack {
                            Text("Compatibility").foregroundStyle(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }//: HStack
                        
                        HStack {
                            Text("Developer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Daniel Polo G.")
                        }//: HStack
                        
                        HStack {
                            Text("Designer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Dangelogar")
                        }//: HStack
                        
                        HStack {
                            Text("Website").foregroundStyle(Color.gray)
                            Spacer()
                            Text("github.com/Danfelogar")
                        }//: HStack
                        
                        HStack {
                            Text("Version").foregroundStyle(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }//: HStack
                    } else {
                        HStack {
                            Text("Personal message").foregroundStyle(Color.gray)
                            Spacer()
                            Text("<👍🏽 Great Code/>")
                        }//: HStack
                    }
                    
                   
                }
            }//: Form
        }//: VStack
        .frame(maxWidth: 640 )
    }
}

#Preview {
    SettingsView()
}
