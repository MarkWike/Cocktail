
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct IngredientsDrinkView: View {
    @StateObject var viewModel = ingredientsDrinkViewModel()
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    var ingredients: String
    @State var selectedIndex = 0
    @ObservedObject var dataController = IngredientDrinkDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            List {
                ForEach(dataController.ingredientDrinkInfo?.drinks ?? [], id: \.self) { ingredients in
                    NavigationLink {
                        CocktailView(drinkId: ingredients.idDrink ?? "11007")
                    } label: {
                        VStack{
                            IngredientsDrinksViewListView(drinkName: ingredients.strDrink ?? "Drink", DrinkImage: ingredients.strDrinkThumb ?? "drink thumb")
                            ListLineView()
                        }
                    }
                    
                }.listRowBackground(Color.clear)
            }.frame(height: UIScreen.frameSizeList)
                .navigationTitle("Search")
        }
        .onAppear {
            dataController.fetch(Ingredients: ingredients)
        }
    }
}

struct IngredientsDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsDrinkView(ingredients: practiceDrinkIngredient1)
      //  IngredientsDrinkView()
    }
}
