//
//  MainMenuViewModel.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import Foundation
import SwiftUI

class MainMenuViewModel: ObservableObject {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    @Published var drinkId: String = ""
    @Published var typeID: String = ""
    
    
}
