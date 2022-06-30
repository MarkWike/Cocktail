
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct RumView: View {
    @StateObject var viewModel = rumViewViewModel()
    @ObservedObject var dataController = RumDataController()
  
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
                ForEach(dataController.rumInfo?.drinks ?? [], id: \.self) { rum in
                    NavigationLink {
                        CocktailView(drinkId: rum.idDrink ?? "11007")
                    } label: {
                        VStack{
                            RumViewListView(imageName: rum.strDrinkThumb ?? "drink thumb", name: rum.strDrink ?? "Drink")
                            ListLineView()
                        }
                    }
                }.listRowBackground(Color.clear)
            }.frame(height: UIScreen.frameSizeList)
                .navigationTitle("Rum")
        }
        .onAppear {
            dataController.fetch()
        }
    }
}

struct RumView_Previews: PreviewProvider {
    static var previews: some View {
        VodkaView()
    }
}
