//
//  SearchByViewButton.swift
//  Cocktail
//
//  Created by Mark Wike on 12/06/2022.
//

import SwiftUI

struct SearchByIngredientButton: View {
    var body: some View {
        ZStack {
            Image("shot")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 160, height: 160)
            VStack{
                Text("Search Ingredient")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                    .frame(width: 160, height: 90, alignment: .center)
            }
        }
    }
}

struct SearchByIngredientButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchByIngredientButton()
    }
}
