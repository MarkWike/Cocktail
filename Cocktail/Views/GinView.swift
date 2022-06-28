//
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct GinView: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    init () {
        UITableView.appearance().backgroundColor = .clear
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
    }
    @ObservedObject var dataController = GinDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            List {
                ForEach(dataController.ginInfo?.drinks ?? [], id: \.self) { gin in
                    NavigationLink {
                        CocktailView(drinkId: gin.idDrink ?? "11007")
                    } label: {
                        VStack{
                            HStack{
                                let test = gin.strDrinkThumb ?? "drink thumb"
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
                                Text(gin.strDrink ?? "Drink")
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
        }
        .navigationTitle("Gin")
        .foregroundColor(.indigo)
        .onAppear {
            dataController.fetch()
        }
    }
}


struct GinView_Previews: PreviewProvider {
    static var previews: some View {
        GinView()
    }
}
