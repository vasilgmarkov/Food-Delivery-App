//
//  Dish.swift
//  Yummie
//
//  Created by vas mar on 07/04/2021.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return String(format: "\(calories ?? 0) calories")
    }
}
