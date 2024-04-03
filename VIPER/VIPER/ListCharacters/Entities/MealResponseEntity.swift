//
//  MealResponseEntity.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import Foundation

struct MealResponseEntity: Decodable{
    let results: [MealEntity]
    
    
    private enum CodingKeys: String, CodingKey {
        case results = "meals"
    }
}
