//
//  VIPERTests.swift
//  VIPERTests
//
//  Created by 1135307 on 14/03/24.
//

import XCTest
@testable import VIPER  //Importar el proyecto

final class VIPERTests: XCTestCase {
    var sutInteractor: ListMealInteractor!
    var sutPresenter: ListMealPresenter!
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sutInteractor = ListMealInteractor()
        sutPresenter = ListMealPresenter(listMealInteractor: sutInteractor)
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sutInteractor = nil
        sutPresenter = nil
    }

    func testGetListMeal() async{
        let result = await sutInteractor.getListMeal()
        XCTAssertNotNil(result)
    }
    
    func testUpperCase(){
        let expectedLetter = "CESAR"
        let result = sutPresenter.upperCase(letter: "Cesar")
        XCTAssertTrue(expectedLetter == result, "El valor de la función es \(result) y el valor esperado es \(expectedLetter)")
    }
    
    func testSumNumbers(){
        let expectedNumber = 30
        let result = sutPresenter.sumNumbers(a: 22, b: 8)
        XCTAssertEqual(expectedNumber, result)
    }


}
