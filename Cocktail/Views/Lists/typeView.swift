//
//  typeView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//
import SwiftUI

struct TypeView: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    var typeID: String
    var typeName: String
    @ObservedObject var dataController = TypeDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            List {
                ForEach(dataController.typeInfo?.drinks ?? [], id: \.self) { types in
                    NavigationLink {
                        CocktailView(drinkId: types.idDrink ?? "11007")
                    } label: {
                        VStack{
                            typeViewListView(imageName: types.strDrinkThumb ?? "drink thumb", drinkName: types.strDrink ?? "Drink")
                            ListLineView()
                        }
                    }
                }.listRowBackground(Color.clear)
            }.frame(height: UIScreen.frameSizeList)
                .navigationTitle("\(typeName)")
        }
        .onAppear {
            dataController.fetch(TypeID: typeID)
        }
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView(typeID: practiceTypeID, typeName: practiceTypeID)
    }
}
