//
//  ginDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import Foundation
import Combine

class GinDataController: ObservableObject {
    
    @Published var ginInfo: GinInfo?
    
    var cancellable: Set<AnyCancellable> = []
    
    func fetch() {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/filter.php?i=Gin")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: GinInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                ginInfo = data
            }
            .store(in: &cancellable)
    }
}
