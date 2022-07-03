//
//  cocktailViewcoclktailTitleView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct cocktailViewcoclktailTitleView: View {
    var drinkName = ""
    var body: some View {
        Text(drinkName)
            .font(.custom("Futura Bold", size: 30))
            .frame(width: 300)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
    }
}

struct cocktailViewcoclktailTitleView_Previews: PreviewProvider {
    static var previews: some View {
        cocktailViewcoclktailTitleView()
    }
}
