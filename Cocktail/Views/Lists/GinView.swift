//
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct GinView: View {
    @StateObject var viewModel = ginViewViewModel()
    @ObservedObject var dataController = GinDataController()
    init () {
        UITableView.appearance().backgroundColor = .clear
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
    }
   
    var body: some View {
        ZStack{
            LinearGradient(gradient: viewModel.GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            List {
                ForEach(dataController.ginInfo?.drinks ?? [], id: \.self) { gin in
                    NavigationLink {
                        CocktailView(drinkId: gin.idDrink ?? "11007")
                    } label: {
                        VStack{
                            ginViewListView(imageName: gin.strDrinkThumb ?? "drink thumb", name: gin.strDrink ?? "Drink")
                            ListLineView()
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
