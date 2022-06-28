//
//  ginDataController.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import Foundation
import Combine

class LatestDataController: ObservableObject {
    @Published var latestInfo: LatestInfo?
    var cancellable: Set<AnyCancellable> = []
    func fetch() {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/\(APIKEY)/latest.php")
        URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: LatestInfo?.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .sink { [weak self]  completion in
                print("Event \(completion) from \(String(describing: self))")
                if case .failure(let error) = completion {
                    print("There was an error, Error: \(error)")
                }
            } receiveValue: { [unowned self] data in
                latestInfo = data
            }
            .store(in: &cancellable)
    }
}
