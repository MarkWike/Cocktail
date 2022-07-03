//
//  UserDrinkDrinkInfoView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct UserDrinkDrinkInfoView: View {
    var drinkName = ""
    var drinkType = ""
    var drinkGlass = ""
    var body: some View {
        Text(drinkName)
            .font(.custom("Futura", size: 30))
            .foregroundColor(.white)
        Text(drinkType)
            .font(.custom("Futura", size: 20))
            .frame(width: 300, alignment: .center)
            .foregroundColor(.white)
        let GlassText = "Best served in a \(drinkGlass)"
        Text(GlassText)
            .font(.custom("Futura", size: 20))
            .frame(width: 300, alignment: .center)
            .foregroundColor(.white)
    }
}

struct UserDrinkDrinkInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinkDrinkInfoView()
    }
}
