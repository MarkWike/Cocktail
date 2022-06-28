//
//  GinModel.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import Foundation

struct GinInfo: Hashable, Decodable {
    var drinks: [GinDrinks]
}

struct GinDrinks: Hashable, Decodable {
    var strDrink: String?
    var strDrinkThumb: String?
    var idDrink: String?
}

