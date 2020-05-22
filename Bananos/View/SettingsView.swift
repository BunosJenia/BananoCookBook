//
//  SettingsView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/20/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    private let appData: [AppData] = applicationData
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("banan")
                .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: 0, y: 4)
                
                Text("BANANOS")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.bananosYellow())
            }
            .padding()
            
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                       Text("Background Refresh")
                    }
                }
                
                if enableNotification {
                    Section(header: Text("Application")) {
                        ForEach(appData) { item in
                            HStack {
                                Text(item.dataName).foregroundColor(Color.gray)
                                Spacer()
                                Text(item.info)
                            }
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
