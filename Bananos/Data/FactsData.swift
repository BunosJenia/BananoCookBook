//
//  FactsData.swift
//  Bananos
//
//  Created by Yauheni Bunas on 5/22/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct  Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

let factsData: [Fact] = [
    Fact(
        image: "banan_fact1",
        content: "Some long long long facts about bananos and long long long more. and somethin else about bananos. good luck my friends."
    ),
    Fact(
        image: "banan_fact2",
        content: "More than 100 billion bananas are eaten every year in the world, making them the fourth most popular agricultural product."
    ),
    Fact(
        image: "banan_fact3",
        content: "The scientific name for banana is musa sapientum, which means 'fruit of the wise men.'"
    ),
    Fact(
        image: "banan_fact1",
        content: "The type of banana you see in the supermarket is called a Cavendish banana. The preferred variety was originally the Gros Michel, which essentially became extinct by 1960, thanks to a fungus called Panama disease."
    ),
    Fact(
        image: "banan_fact2",
        content: "Some cultures (most notably Japan) use the fiber in the banana plant to make fabric and sometimes even paper."
    ),
    Fact(
        image: "banan_fact3",
        content: "The fastest marathon ever run by a competitor dressed as a fruit was 2 hours, 58 minutes, and 20 seconds—recorded at the Barcelona Marathon on March 6, 2011. The runner was Patrick Wightman from the United Kingdom, who dressed as a banana."
    ),
    Fact(
        image: "banan_fact1",
        content: "If you rub the inside of a banana peel on a scrape or burn, it will help the pain go away, keep the swelling down, and keep the wound from getting infected."
    )
    
]
