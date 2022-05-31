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
    // when we make the persistant container it needs to know the name of the model we created, it needs to be named exactly like the name in the model. In this example the model is called "FirstExample"
        UserDrinkspersistantContainer = NSPersistentContainer(name: "UserDrinks")
        
        // The loadPeristenStores now knows where to look for the data and when the app is reloaded it will pull any data that has been saved
        UserDrinkspersistantContainer.loadPersistentStores { _,_ in }
    
    
    
    }





}
