//
//  typeDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import Foundation
import Combine

class DrinkNameDataController: ObservableObject {
    @Published var drinkNameInfo: DrinkNameInfo?
    var cancellable: Set<AnyCancellable> = []
    func fetch(DrinkName: String) {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/search.php?s=\(DrinkName)")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: DrinkNameInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                drinkNameInfo = data
            }
            .store(in: &cancellable)
    }
}
let practiceDrinkName = "Shake"
