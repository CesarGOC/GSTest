//
//  MealEntity.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import Foundation

struct MealEntity: Decodable{
    let id: String
    let nameMeal: String
    let imageMeal: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case nameMeal = "strMeal"
        case imageMeal = "strMealThumb"
    }
}
