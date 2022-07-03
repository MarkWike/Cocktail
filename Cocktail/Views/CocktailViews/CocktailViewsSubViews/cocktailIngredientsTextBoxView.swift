//
//  cocktailIngredientsTextBoxView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct cocktailIngredientsTextBoxView: View {
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    var drinkIngredient = ""
    var drinkMeasure = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15.0)
                .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                .frame(height: 40.0)
                .padding(.horizontal)
            Text("\(drinkMeasure) \(drinkIngredient)")
                .font(.custom("Futura", size: 15))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}

struct cocktailIngredientsTextBoxView_Previews: PreviewProvider {
    static var previews: some View {
        cocktailIngredientsTextBoxView()
    }
}
