//
//  CocktailDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//

import Foundation
import Combine

class CocktailDataController: ObservableObject {
    @Published var cocktailInfo: CocktailInfo?
    var cancellable: Set<AnyCancellable> = []
    
    func fetch(DrinkID: String) {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/lookup.php?i=\(DrinkID)")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: CocktailInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                cocktailInfo = data
            }
            .store(in: &cancellable)
    }
}
let practiceDrinkID = "11007"
