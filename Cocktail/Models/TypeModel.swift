//
//  VodkaModel.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//


import Foundation

struct TypeInfo: Hashable, Decodable {
    var drinks: [TypeDrinks]
}

struct TypeDrinks: Hashable, Decodable {
    var strDrink: String?
    var strDrinkThumb: String?
    var idDrink: String?
}
