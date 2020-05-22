//
//  HeaderView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/20/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @State var showHeadline: Bool = false
    
    var header: Header
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(header.headline)
                    .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.bananosYellow())
                        .shadow(radius: 3)
                    
                    
                    Text(header.subHeadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.bananosYellow())
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }
        .frame(width: 480, height: 320, alignment: .center)
        .background(
             Image("background")
             .resizable()
             .aspectRatio(contentMode: .fill)
        )
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData.first!)
            .previewLayout(.sizeThatFits)
    }
}
