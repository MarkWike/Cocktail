//
//  SearchDrinkViewModel.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import Foundation
import SwiftUI

class SearchDrinkViewModel: ObservableObject {
    @Published var drinkName: String = ""
    @Published var replaced: String = ""
    @ObservedObject var dataController = DrinkNameDataController()
     var drinkIsEmpty: Bool {
        return drinkName.isEmpty
    }
    
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    
    
    func searchButtonAction() {
        replaced = drinkName.replacingOccurrences(of: " ", with: "_")
        dataController.fetch(DrinkName: replaced)
    }
    
}
