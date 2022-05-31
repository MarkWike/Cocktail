//
//  CocktailApp.swift
//  Cocktail
//
//  Created by Mark Wike on 07/04/2022.
//

import SwiftUI

@main
struct CocktailApp: App {
    var body: some Scene {
        WindowGroup {
        FirstView()
                .environment(\.managedObjectContext, UserDrinksContainer().UserDrinkspersistantContainer.viewContext)
        }
    }
}
