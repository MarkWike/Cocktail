//
//  VodkaModel.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//


import Foundation

struct IngredientDrinkInfo: Hashable, Decodable {
    var drinks: [IngredientDrinkDrinks]
}

struct IngredientDrinkDrinks: Hashable, Decodable {
    var strDrink: String?
    var strDrinkThumb: String?
    var idDrink: String?
}
