//
//  UserDrinkMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinkMenu: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    @FetchRequest(sortDescriptors: []) private var drink: FetchedResults<UserDrinksEntity>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: UserDrinksAddView()) {
                        UserDrinksMenuAddButtonView()
                    }
                    UserDrinksMenuHeaderView()
                    List {
                        ForEach(drink) { drinks in
                            NavigationLink {
                                ZStack{
                                    LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                                        .ignoresSafeArea()
                                    VStack{
                                        UserDrinkDrinkInfoView(drinkName: drinks.strDrink ?? "Drink", drinkType: drinks.strAlcoholic ?? "Alcoholic", drinkGlass: drinks.strGlass?.lowercased() ?? "glass")
                                        HStack {
                                            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                                                VStack{
                                                        userDrinksInstructionsView(drinkInstructions: drinks.strInstructions ?? "instructions")
                                                    ZStack{
                                                        VStack(spacing: 20){
                                                            userDrinksIngredientsHeaderView()
                                                            if drinks.strIngredient1 == "" {
                                                            }else{
                                                                UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient1 ?? "")
                                                            }
                                                            if drinks.strIngredient2 == "" {
                                                            }else{
                                                                UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient2 ?? "")
                                                            }
                                                            if drinks.strIngredient3 == "" {
                                                            }else{
                                                                UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient3 ?? "")
                                                                if drinks.strIngredient4 == "" {
                                                                }else{
                                                                    UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient4 ?? "")
                                                                }
                                                                if drinks.strIngredient5 == "" {
                                                                }else{
                                                                    UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient5 ?? "")
                                                                }
                                                                if drinks.strIngredient6 == "" {
                                                                }else{
                                                                    UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient6 ?? "")
                                                                }
                                                                if drinks.strIngredient7 == "" {
                                                                }else{
                                                                    UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient7 ?? "")
                                                                }
                                                                if drinks.strIngredient8 == "" {
                                                                }else{
                                                                    UserDrinksIngreientBoxView(drinkIngredient: drinks.strIngredient8 ?? "")
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        Spacer()
                                    }
                                }
                            } label: {
                                UserDrinkMenuListView(drinkName: drinks.strDrink ?? "")
                            }
                        }
                        .onDelete(perform: removeLanguages)
                        .listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeSearchList)
                }
            }.navigationBarHidden(true)
        }
    }
    
    func removeLanguages(at offsets: IndexSet) {
        for index in offsets {
            let language = drink[index]
            moc.delete(language)
        }
        do {
            try moc.save()
        } catch {
            // handle the Core Data error
        }
    }
    
}


struct UserDrinkMenu_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinkMenu()
    }
}


