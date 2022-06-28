//
//  VodkaModel.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//


import Foundation

struct DrinkNameInfo: Hashable, Decodable {
    var drinks: [DrinkNameDrinks]
}

struct DrinkNameDrinks: Hashable, Decodable {
    var strDrink: String?
    var strDrinkThumb: String?
    var idDrink: String?
}
