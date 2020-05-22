//
//  AppData.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/21/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct  AppData: Identifiable {
    var id = UUID()
    var dataName: String
    var info: String
}

let applicationData: [AppData] = [
    AppData(
        dataName: "Product",
        info: "Banano Recipes"
    ),
    AppData(
        dataName: "Compatibility",
        info: "IPhone & IPad"
    ),
    AppData(
        dataName: "Developer",
        info: "Yauheni Bunas"
    ),
    AppData(
        dataName: "Website",
        info: "bananono.banan"
    ),
    AppData(
        dataName: "Version",
        info: "1.0.0"
    ),
]
