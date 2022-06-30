//
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct VodkaView: View {
    @StateObject var viewModel = vodkaViewViewModel()
    @ObservedObject var dataController = VodkaDataController()
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
                ForEach(dataController.vodkaInfo?.drinks ?? [], id: \.self) { vodka in
                    NavigationLink {
                        CocktailView(drinkId: vodka.idDrink ?? "11007")
                    } label: {
                        VStack{
                            vodkaViewListView(imageName: vodka.strDrinkThumb ?? "drink thumb", name: vodka.strDrink ?? "Drink")
                            ListLineView()
                        }
                    }
                }.listRowBackground(Color.clear)
            }.frame(height: UIScreen.frameSizeList)
                .navigationTitle("Vodka")
        }
        .onAppear {
            dataController.fetch()
        }
    }
}

struct VodkaView_Previews: PreviewProvider {
    static var previews: some View {
        VodkaView()
    }
}
