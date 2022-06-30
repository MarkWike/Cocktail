//
//  VodkaModel.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//


import Foundation

struct IngredientsInfo: Hashable, Decodable {
    var drinks: [IngredientsDrinks]
}

struct IngredientsDrinks: Hashable, Decodable {
    var strIngredient1: String?
}
