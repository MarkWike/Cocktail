//
//  RandomListDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 12/06/2022.
//


import Foundation
import Combine

class RandomListDataController: ObservableObject {
    
    @Published var rlistInfo: RlistInfo?
    
    var cancellable: Set<AnyCancellable> = []
    
    func fetch() {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/randomselection.php")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: RlistInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                rlistInfo = data
            }
            .store(in: &cancellable)
    }
}
