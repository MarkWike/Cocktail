//
//  searchIngredients3pickedView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct searchIngredients3pickedView: View {
    @StateObject var viewModel = SearchingredientsViewModel()
    var Name1 = ""
    var Name2 = ""
    var Name3 = ""
    var body: some View {
        HStack{
         //   Text(viewModel.Ingredient1View)
            Text(Name1)
                .font(.custom("Futura", size: 15))
                .foregroundColor(.indigo)
                .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                .padding()
         //   Text(viewModel.Ingredient2View)
            Text(Name2)
                .font(.custom("Futura", size: 15))
                .foregroundColor(.indigo)
                .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                .padding()
          //  Text(viewModel.Ingredient3View)
            Text(Name3)
                .font(.custom("Futura", size: 15))
                .foregroundColor(.indigo)
                .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                .padding()
        }
    }
}

struct searchIngredients3pickedView_Previews: PreviewProvider {
    static var previews: some View {
        searchIngredients3pickedView()
    }
}
