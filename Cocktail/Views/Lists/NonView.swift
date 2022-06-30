//
//  NonView.swift
//  Cocktail
//
//  Created by Mark Wike on 25/05/2022.
//

import SwiftUI

struct NonView: View {
    @StateObject var viewModel = nonViewViewModel()
    @ObservedObject var dataController = NonDataController()
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
                ForEach(dataController.nonInfo?.drinks ?? [], id: \.self) { non in
                    NavigationLink {
                        CocktailView(drinkId: non.idDrink ?? "11007")
                    } label: {
                        VStack{
                            nonViewListView(imageName: non.strDrinkThumb ?? "drink thumb", name: non.strDrink ?? "Drink")
                            ListLineView()
                        }
                    }
                }.listRowBackground(Color.clear)
            }
        }
        .navigationTitle("Non Alcoholic")
        .navigationBarHidden(true)
        .onAppear {
            dataController.fetch()
        }
    }
}

struct NonView_Previews: PreviewProvider {
    static var previews: some View {
        NonView()
    }
}
