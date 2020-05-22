//
//  DishesView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/21/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("bread")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Bread")
                }
                Divider()
                HStack() {
                    Image("toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack() {
                    Image("punch")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Punch")
                }
                Divider()
                HStack() {
                    Image("bars")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Bars")
                }
            }
            
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
            }
            
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Ice Cream")
                    Spacer()
                    Image("icecream")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Smoothie")
                    Spacer()
                    Image("smoothie")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Pancakes")
                    Spacer()
                    Image("pancakes")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Muffins")
                    Spacer()
                    Image("muffins")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
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
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
