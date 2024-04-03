//
//  ListCharacteresPresenter.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import Foundation


protocol ListMealUI: AnyObject{
    func update(meals: [MealEntity])
}

class ListMealPresenter{
    var ui: ListMealUI?
    var models: [MealEntity] = []
    private let listMealInteractor: ListMealInteractor
    
    init(listMealInteractor: ListMealInteractor){
        self.listMealInteractor = listMealInteractor
    }
    
    func onViewAppear(){
        Task{
            models = await listMealInteractor.getListMeal().results
            ui?.update(meals: models)
        }
    }
    
    func upperCase(letter: String)-> String{
        return letter.uppercased()
    }
    
    func sumNumbers(a: Int, b: Int) -> Int{
        
        return a + b
    }
}
