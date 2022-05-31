//
//  typeDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import Foundation
import Combine

class TypeDataController: ObservableObject {

    @Published var typeInfo: TypeInfo?
 //   var DrinkId : Int
    var cancellable: Set<AnyCancellable> = []
    
    func fetch(TypeID: String) {
        print("the type id is \(TypeID)")
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/filter.php?c=\(TypeID)")
      //  let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/lookup.php?i=\(DrinkID)")
     //   print(url)
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: TypeInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                typeInfo = data
            }
            .store(in: &cancellable)
    }
   
}
let practiceTypeID = "Shake"
