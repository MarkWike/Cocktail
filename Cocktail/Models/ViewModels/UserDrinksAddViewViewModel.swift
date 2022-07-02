//
//  UserDrinksAddViewViewModel.swift
//  Cocktail
//
//  Created by Mark Wike on 02/07/2022.
//

import Foundation
import SwiftUI

class UserDrinksAddViewViewModel: ObservableObject {
   //  @Published var searchIngredient: String = ""
    @Published var strDrink = ""
    @Published var strCategory = ""
    @Published var strAlcoholic = ""
    @Published var strGlass = ""
    @Published var textFieldData = ""
    @Published var strInstructions = ""
    @Published var strIngredient1 = ""
    @Published var strIngredient2 = ""
    @Published var strIngredient3 = ""
    @Published var strIngredient4 = ""
    @Published var strIngredient5 = ""
    @Published var strIngredient6 = ""
    @Published var strIngredient7 = ""
    @Published var strIngredient8 = ""
    @Published var strIngredient9 = ""
    @Published var strIngredient10 = ""
    @Published var strIngredient11 = ""
    @Published var strIngredient12 = ""
    @Published var strIngredient13 = ""
    @Published var strIngredient14 = ""
    @Published var strIngredient15 = ""
    @Published var strMeasure1 = ""
    @Published var strMeasure2 = ""
    @Published var strMeasure3 = ""
    @Published var strMeasure4 = ""
    @Published var strMeasure5 = ""
    @Published var strMeasure6 = ""
    @Published var strMeasure7 = ""
    @Published var strMeasure8 = ""
    @Published var strMeasure9 = ""
    @Published var strMeasure10 = ""
    @Published var strMeasure11 = ""
    @Published var strMeasure12 = ""
    @Published var strMeasure13 = ""
    @Published var strMeasure14 = ""
    @Published var strMeasure15 = ""
    @Published var number = 1
    @Published var temp = ""
    @Published var showingAlert = false
 
    func buttonAction() {
        if temp == "" {
            
        }else{
            if number == 1 {
                strIngredient1 = temp
                number = 2
                temp = ""
            }else if number == 2 {
                strIngredient2 = temp
                number = 3
                temp = ""
            }else if number == 3 {
                strIngredient3 = temp
                number = 4
                temp = ""
            }else if number == 4 {
                strIngredient4 = temp
                number = 5
                temp = ""
            }else if number == 5 {
                strIngredient5 = temp
                number = 6
                temp = ""
            }else if number == 6 {
                strIngredient6 = temp
                number = 7
                temp = ""
            }else if number == 7 {
                strIngredient7 = temp
                number = 8
                temp = ""
            }else if number == 8 {
                strIngredient8 = temp
                number = 9
                temp = ""
            }else if number == 9 {
                strIngredient9 = temp
                number = 10
                temp = ""
            }else if number == 10 {
                strIngredient10 = temp
                number = 11
                temp = ""
            }
            print(number)
        }
    }
    
    
    
    
}
