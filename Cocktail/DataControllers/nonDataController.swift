//
//  nonDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 25/05/2022.
//

import Foundation
import Combine

class NonDataController: ObservableObject {

    @Published var nonInfo: NonInfo?
 
    var cancellable: Set<AnyCancellable> = []
    
    func fetch() {
      //  let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/popular.php")
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/filter.php?a=Non_Alcoholic")
  
      //  print(url)
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: NonInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                nonInfo = data
            }
            .store(in: &cancellable)
    }
   
}
