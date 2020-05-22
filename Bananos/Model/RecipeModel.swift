//
//  RecipeModel.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/22/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headLine: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingridients: [String]
}
