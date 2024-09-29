//
//  BodyTypeModel.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 27/09/2024.
//

import Foundation


struct Body: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var icon: String
}

// Define an array of Body objects
let BodyTypeItems: [Body] = [
    Body(title: "Slim", icon: "figure.walk"),
    Body(title: "Average", icon: "figure.stand"),
    Body(title: "Athletic", icon: "figure.run"),
    Body(title: "Broad", icon: "figure.wave"),
    Body(title: "Muscular", icon: "figure.flexibility"),
    Body(title: "Not Sure", icon: "questionmark.circle")
]
