//
//  AppView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct AppView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })

            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
//                .toolbarBackground(
//                       Color.yellow,
//                       for: .tabBar)

            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
           
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })

        }//: TabView
        .ignoresSafeArea(edges: .all)
        .onAppear(perform: {
            UITabBar.appearance().backgroundColor = UIColor.white.withAlphaComponent(0.1)
        })
        .tint(Color.primary)
        .accentColor(Color.primary)
    }
}

#Preview { AppView() }
