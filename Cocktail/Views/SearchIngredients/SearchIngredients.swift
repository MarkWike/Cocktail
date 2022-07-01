
import SwiftUI

struct SearchIngredients: View {
    @StateObject var viewModel = SearchingredientsViewModel()

    init () {
        UITableView.appearance().backgroundColor = .clear
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
    }
    @ObservedObject var dataController = IngredientsDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: viewModel.GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                SearchingredientsHeaderView()
                Button(action: {
                    viewModel.resetProperties()
                }){
                    searchIngredientsBackButtonView()
                }
                searchIngredients3pickedView(Name1: viewModel.Ingredient1View, Name2: viewModel.Ingredient2View, Name3: viewModel.Ingredient3View)
               
                NavigationLink {
                  //  IngredientsDrinkView(ingredients: viewModel.Ingredients)
                    IngredientsDrinkView(ingredients: viewModel.Ingredients)
                } label: {
                    searchIngredientsSearchButtonView()
                }
                Group {
                    ZStack(alignment: .leading) {
                        if viewModel.searchIngredient.isEmpty {
                            Text("Search ingredient")
                                .font(.custom("Futura", size: 20))
                                .foregroundColor(.indigo)
                        }
                        TextField("", text: $viewModel.searchIngredient)
                    }
                    .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.indigo, lineWidth: 5))
                    .background(Color("textField").opacity(0.9))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .font(.custom("Futura", size: 20))
                    .padding(.horizontal)
                }
                if viewModel.searchIngredient.isEmpty == true {
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.ingredientsInfo?.drinks ?? [], id: \.self) { non in
                            Button(action: {
                                viewModel.searchButton(ingredientPass: non.strIngredient1 ?? "")
                            }){
                                SearchIngredientsListTextView(drink: non.strIngredient1 ?? "Drink")
                            }
                        }.listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeCocktailList)
                } else {
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.ingredientsInfo?.drinks.filter { $0.strIngredient1!.contains(viewModel.searchIngredient) }  ?? [], id: \.self ) { non in
                            Button(action: {
                                viewModel.searchButton(ingredientPass: non.strIngredient1 ?? "")

                            }){
                                SearchIngredientsListTextView(drink: non.strIngredient1 ?? "Drink")
                            }
                        }.listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeCocktailList)
                }
            }
        }
        .onAppear {
            dataController.fetch()
            viewModel.resetProperties()
        }
    }
}

struct SearchIngredients_Previews: PreviewProvider {
    static var previews: some View {
        SearchIngredients()
    }
}
