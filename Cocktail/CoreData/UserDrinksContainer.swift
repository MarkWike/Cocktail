//
//  UserDrinksContainer.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import Foundation
import CoreData

class UserDrinksContainer {
    let UserDrinkspersistantContainer: NSPersistentContainer
    init() {
        UserDrinkspersistantContainer = NSPersistentContainer(name: "UserDrinks")
        UserDrinkspersistantContainer.loadPersistentStores { _,_ in }
    }
}
