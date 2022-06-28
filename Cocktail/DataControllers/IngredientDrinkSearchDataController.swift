//
//  CocktailDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//

import Foundation
import Combine

class IngredientDrinkDataController: ObservableObject {
    
    @Published var ingredientDrinkInfo: IngredientDrinkInfo?
    var cancellable: Set<AnyCancellable> = []
    func fetch(Ingredients: String) {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/filter.php?i=\(Ingredients)")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: IngredientDrinkInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                ingredientDrinkInfo = data
            }
            .store(in: &cancellable)
    }
}
let practiceDrinkIngredient1 = "gin"
let practiceDrinkIngredient2 = "11007"
let practiceDrinkIngredient3 = "11007"
let practiceNumber = 1
