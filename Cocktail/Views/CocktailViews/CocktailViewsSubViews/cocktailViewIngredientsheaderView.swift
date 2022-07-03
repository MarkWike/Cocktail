//
//  cocktailViewIngredientsheaderView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct cocktailViewIngredientsheaderView: View {
    var body: some View {
        Text("Ingredients")
            .font(.custom("Futura", size: 20))
            .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            .frame(width: 300, alignment: .center)
            .foregroundColor(.white)
            .padding(20)
    }
}

struct cocktailViewIngredientsheaderView_Previews: PreviewProvider {
    static var previews: some View {
        cocktailViewIngredientsheaderView()
    }
}
