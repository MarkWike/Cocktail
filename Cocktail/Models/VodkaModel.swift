//
//  VodkaModel.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//


import Foundation

struct VodkaInfo: Hashable, Decodable {
    var drinks: [VodkaDrinks]
}

struct VodkaDrinks: Hashable, Decodable {
    var strDrink: String?
    var strDrinkThumb: String?
    var idDrink: String?
}
