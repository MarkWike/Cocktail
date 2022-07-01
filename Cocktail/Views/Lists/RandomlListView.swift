//
//  RandomlListView.swift
//  Cocktail
//
//  Created by Mark Wike on 12/06/2022.
//




import SwiftUI

struct RandomlListView: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    init () {
        UITableView.appearance().backgroundColor = .clear
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
    }
    @ObservedObject var dataController = RandomListDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            List {
                ForEach(dataController.rlistInfo?.drinks ?? [], id: \.self) { non in
                    NavigationLink {
                        CocktailView(drinkId: non.idDrink ?? "11007")
                    } label: {
                        VStack{
                            randomListlistView(DrinkImage: non.strDrinkThumb ?? "drink thumb", DrinkName: non.strDrink ?? "Drink")
                            ListLineView()
                        }
                    }
                }.listRowBackground(Color.clear)
            }.frame(height: UIScreen.frameSizeList)
        }
        .navigationTitle("Random List")
        .onAppear {
            dataController.fetch()
        }
    }
}

struct RandomlListView_Previews: PreviewProvider {
    static var previews: some View {
        RandomlListView()
    }
}
