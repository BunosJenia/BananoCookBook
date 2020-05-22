//
//  BananosView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/20/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct BananosView: View {
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("banan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 280, height: 280, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.8)
                .opacity(self.pulsateAnimation ? 1 : 0.85)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("BANANOS")
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(Color.bananosYellow())
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("""

A banana is an elongated, edible fruit - botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.
""")
                .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color.bananosYellow())
                    .multilineTextAlignment(.center)
                .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120 )
            }
            .padding()
            
            Spacer()
        }
        .background(
             Image("background")
             .resizable()
             .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
        
    }
}

struct BananosView_Previews: PreviewProvider {
    static var previews: some View {
        BananosView()
    }
}
