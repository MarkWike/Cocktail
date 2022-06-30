//
//  RumViewViewModel.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import Foundation

import SwiftUI

class rumViewViewModel: ObservableObject {
    @Published var selectedIndex = 0
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
}
