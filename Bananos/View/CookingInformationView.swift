//
//  CookingInformationView.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/27/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct CookingInformationView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Preparation: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
            
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct CookingInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CookingInformationView(recipe: recipesData.first!)
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
