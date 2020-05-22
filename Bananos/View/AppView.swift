//
//  AppView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/20/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            BananosView()
            .tabItem({
//                Image("banano")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40, alignment: .center)
//                    .padding(.top)
                
                Text("Bananos")
            })
            ContentView()
            .tabItem({
//                Image("recipe")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40, alignment: .center)
//                .padding(20)
                Text("Recipes")
            })
            SettingsView()
            .tabItem({
//                Image("settings")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40, alignment: .center)
//                    .padding(20)
                Text("Settings")
            })
        }
        //.edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
