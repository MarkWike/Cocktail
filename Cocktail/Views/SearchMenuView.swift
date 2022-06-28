//
//  UserDrinkMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct SearchMenuView: View {
    
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                    .ignoresSafeArea()
                VStack{
                    Text("SEARCH")
                        .font(.custom("Futura Bold", size: 20))
                        .foregroundColor(.white)
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                        .padding()
                    NavigationLink(destination: TypeMenu()) {
                        ZStack{
                            Image("softDrink")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                .frame(width: 160, height: 160)
                            VStack{
                                Text("Search Type")
                                    .font(.custom("Futura Bold", size: 17))
                                    .foregroundColor(.white).opacity(1.6)
                                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                    .frame(width: 160, height: 90, alignment: .center)
                            }
                        }
                    }
                    NavigationLink(destination: SearchIngredients()) {
                        SearchByIngredientButton()
                    }
                    
                    NavigationLink(destination: SearchDrinkView()) {
                        ZStack{
                            Image("softDrink")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                .frame(width: 160, height: 160)
                            
                            VStack{
                                Text("Search Name")
                                    .font(.custom("Futura Bold", size: 17))
                                    .foregroundColor(.white).opacity(1.6)
                                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                    .frame(width: 160, height: 90, alignment: .center)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }.navigationBarHidden(true)
    }
}

struct SearchMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMenuView()
    }
}
