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
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
            .resizable()
            .scaledToFit()
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.black)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
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
                    .foregroundColor(Color.bananosYellow())
                    .italic()
                
                RecipeRatingView(recipe: recipe)

                CookingInformationView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(40)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailsView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData.first!)
            .previewLayout(.sizeThatFits)
    }
}
