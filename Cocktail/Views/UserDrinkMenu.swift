//
//  UserDrinkMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinkMenu: View {
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
    var body: some View {
  //      NavigationView {
            ZStack{

                LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("COCKTAILS")
                    .font(.custom("Futura Bold", size: 40))
                    .foregroundColor(.blue).opacity(1.6)
                    .padding()
                         Text("Are you over 21?")
                    .font(.custom("Futura Bold", size: 20))
                    .foregroundColor(.blue).opacity(1.6)
                    .padding()
                HStack{
                         NavigationLink(destination: UserDrinksAddView()) {
                             ZStack{
                                 Capsule()
                                                 .fill(.blue)
                                                 .frame(width: 100, height: 50)
                                                 .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                             Text("add")
                                 .font(.custom("Futura Bold", size: 30))
                                 .foregroundColor(.white).opacity(1.6)
                             }
                         }
                NavigationLink(destination: UserDrinksView()) {
                    ZStack{
                        Capsule()
                                        .fill(.blue)
                                        .frame(width: 100, height: 50)
                                        .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                        Text("list")
                        .font(.custom("Futura Bold", size: 30))
                        .foregroundColor(.white).opacity(1.6)
                    }
                }
                }
              }
       //     }
                
    }
    }
}

struct UserDrinkMenu_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinkMenu()
    }
}
