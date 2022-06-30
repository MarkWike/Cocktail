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
                        viewModel.searchButtonAction(namePass: viewModel.drinkName)
                        print(viewModel.drinkName)
                        
                    }){
                        Text("Search")
                            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                            .font(.custom("Futura", size: 20))
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                            .cornerRadius(.infinity)
                    }
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.drinkNameInfo?.drinks ?? [], id: \.self) { types in
                            NavigationLink {
                                CocktailView(drinkId: types.idDrink ?? "11007")
                            } label: {
                                VStack{
                                    SearchDrinkListView(imageName: types.strDrinkThumb ?? "drink thumb", DrinkName: types.strDrink ?? "Drink")
//                                    HStack{
//                                        let test = types.strDrinkThumb ?? "drink thumb"
//                                        let url1 = URL(string: test)
//                                        AsyncImage(
//                                            url: url1,
//                                            content: { image in
//                                                image
//                                                    .resizable()
//                                                    .aspectRatio(contentMode: .fit)
//                                                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
//                                                    .frame(maxWidth: 60, maxHeight: 60)
//                                            },
//                                            placeholder: {
//                                                ProgressView()
//                                            }
//                                        )
//                                        Text(types.strDrink ?? "Drink")
//                                            .font(.custom("Futura", size: 20))
//                                            .foregroundColor(.white)
//                                            .frame(width: 200, height: 60, alignment: .leading)
//                                            .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
//                                    }
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
