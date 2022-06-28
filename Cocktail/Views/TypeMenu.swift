//
//  TypeMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct TypeMenu: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                VStack{
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Shake", typeName: "Shakes")) {
                            ShakeView()
                        }
                        NavigationLink(destination: TypeView(typeID: "Ordinary_Drink", typeName: "Ordinary Drinks")) {
                            OrdinaryButtonView()
                        }
                    }
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Cocktail", typeName: "Cocktails")) {
                            cocktailsButtonview()
                        }
                        NavigationLink(destination: TypeView(typeID: "Other/Unknown", typeName: "Other or Unknown")) {
                            OtherUnknownView()
                        }
                    }
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Cocoa", typeName: "Cocoa")) {
                            cocoaView()
                        }
                        NavigationLink(destination: TypeView(typeID: "Shot", typeName: "Shots")) {
                            ShotView()
                        }
                    }
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Coffee_/_Tea", typeName: "Tea & Coffee")) {
                            CoffeeView()
                        }
                        NavigationLink(destination: TypeView(typeID: "Homemade_Liqueur", typeName: "Homemade liqueur")) {
                            HomemadeView()
                        }
                    }
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Punch_/_Party_Drink", typeName: "Party Drinks")) {
                            PartyView()
                        }
                        NavigationLink(destination: TypeView(typeID: "Beer", typeName: "Beer")) {
                            BeerView()
                        }
                    }
                    HStack{
                        NavigationLink(destination: TypeView(typeID: "Soft_Drink", typeName: "Soft Drinks")) {
                            SoftDrinkView()
                        }
                        NavigationLink(destination: UserDrinksView()) {
                            UserDrinkType()
                        }
                    }
                }
            }.frame(height: UIScreen.frameSizeMain)
        }
    }
}

struct TypeMenu_Previews: PreviewProvider {
    static var previews: some View {
        TypeMenu()
    }
}
