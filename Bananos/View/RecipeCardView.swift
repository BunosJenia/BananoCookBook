//
//  RecipeCardView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/22/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
            .resizable()
            .scaledToFit()
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        Image("bookmark")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                        Spacer()
                    }
                }
            )
            
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.bananosYellow())
                    .lineLimit(1)
                
                Text(recipe.headLine)
                .font(.system(.body, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color.bananosYellow())
                .lineLimit(1)
                
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image("person")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image("preparation")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                        Text("Preparation: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image("cooking")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                        Text("Cooking: \(recipe.cooking)")
                    }
                    
                }
                .font(.footnote)
                .foregroundColor(Color.gray)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(40)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData.first!)
            .previewLayout(.sizeThatFits)
    }
}
