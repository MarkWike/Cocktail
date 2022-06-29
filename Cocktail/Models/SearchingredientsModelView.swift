//
//  SearchingredientsModelView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import Foundation
import SwiftUI

class SearchingredientsViewModel: ObservableObject {
    @Published var Ingredient1: String = ""
    @Published var Ingredient2: String = ""
    @Published var Ingredient3: String = ""
    @Published var Ingredient1View: String = ""
    @Published var Ingredient2View: String = ""
    @Published var Ingredient3View: String = ""
    @Published var Ingredients: String = ""
    @Published var Number1: Int = 0
    @Published var replaced: String = ""
    @Published var searchIngredient: String = ""
   // var ingredientPass = ""
    
    


let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])



    func resetProperties() {
        Ingredient1 = ""
        Ingredient2 = ""
        Ingredient3 = ""
        Ingredients = ""
        Number1 = 0
        replaced = ""
        Ingredient1View = ""
        Ingredient2View = ""
        Ingredient3View = ""
    }

    func searchButton(ingredientPass: String) {
        
        if Number1 == 0 {
            Ingredient1 = ingredientPass
            Ingredient1View = ingredientPass
            replaced = Ingredient1.replacingOccurrences(of: " ", with: "_")
            Ingredient1 = replaced
            Number1 = 1
            Ingredients = Ingredient1
        }else if Number1 == 1 {
            Ingredient2 = ingredientPass
            Ingredient2View = ingredientPass
            replaced = Ingredient2.replacingOccurrences(of: " ", with: "_")
            Ingredient2 = replaced
            Number1 = 2
            Ingredients = ("\(Ingredient1),\(Ingredient2)")
        }else if Number1 == 2 {
            Ingredient3 = ingredientPass
            Ingredient3View = ingredientPass
            replaced = Ingredient3.replacingOccurrences(of: " ", with: "_")
            Ingredient3 = replaced
            Number1 = 3
            Ingredients = ("\(Ingredient1),\(Ingredient2),\(Ingredient3)")
        }
        
        
    }



}
