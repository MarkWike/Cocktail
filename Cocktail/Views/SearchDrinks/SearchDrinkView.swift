//
//  SearchDrinkView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/06/2022.
//
import SwiftUI

struct SearchDrinkView: View {
    @StateObject var viewModel = SearchDrinkViewModel()
    @ObservedObject var dataController = DrinkNameDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: viewModel.GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            ScrollView(Axis.Set.vertical, showsIndicators: false) {
                VStack{
                    Group {
                        ZStack(alignment: .leading) {
                            if viewModel.drinkIsEmpty {
                                Text("Name of Drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.drinkName)                }
                        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.indigo, lineWidth: 5))
                        .background(Color("textField").opacity(0.9))
                        .font(.custom("Futura", size: 20))
                        .padding(.horizontal)
                    }
                    Button(action: {
                        viewModel.searchButtonAction(dataController: dataController)
                        print(viewModel.drinkName)
                    }){
                        SearchDrinkSearchButtonView()
                    }
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.drinkNameInfo?.drinks ?? [], id: \.self) { types in
                            NavigationLink {
                                CocktailView(drinkId: types.idDrink ?? "11007")
                            } label: {
                                VStack{
                                    SearchDrinkListView(imageName: types.strDrinkThumb ?? "drink thumb", DrinkName: types.strDrink ?? "Drink")
                                    ListLineView()
                                }
                            }
                        }.listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeCocktailList)
                }
            }
        }
    }
}

struct SearchDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDrinkView()
    }
}
