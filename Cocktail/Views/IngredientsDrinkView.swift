
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct IngredientsDrinkView: View {
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
                            HStack{
                                let test = ingredients.strDrinkThumb ?? "drink thumb"
                                let url1 = URL(string: test)
                                AsyncImage(
                                    url: url1,
                                    content: { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                            .frame(maxWidth: 70, maxHeight: 70)
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                Text(ingredients.strDrink ?? "Drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 60, alignment: .leading)
                                    .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
                            }
                            RoundedRectangle(cornerRadius: 20)
                                .fill(LinearGradient(gradient: GradientColors2, startPoint: .leading, endPoint: .trailing))
                                .frame(width: 250, height: 3, alignment: .trailing)
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
    }
}