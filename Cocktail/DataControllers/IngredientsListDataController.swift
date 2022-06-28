//
//  vodkaDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//
import Foundation
import Combine
import UIKit

class IngredientsDataController: ObservableObject {
    @Published var ingredientsInfo: IngredientsInfo?
    var cancellable: Set<AnyCancellable> = []
    
    func fetch() {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/list.php?i=list")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: IngredientsInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                ingredientsInfo = data
            }
            .store(in: &cancellable)
    }
}
