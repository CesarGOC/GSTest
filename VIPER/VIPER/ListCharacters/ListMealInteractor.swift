//
//  ListCharacteresInteractor.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import Foundation
import UIKit

class ListMealInteractor{
    
    
    func getListMeal() async -> MealResponseEntity{
        let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(MealResponseEntity.self, from: data)
        
    }
}
         
