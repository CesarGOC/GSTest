//
//  ListCharacteresRouter.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import Foundation
import UIKit

class ListMealRouter{
    
    func showListMeal(window: UIWindow?){
        let view = ListMealView()
        let interactor = ListMealInteractor()
        let presenter = ListMealPresenter(listMealInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}
