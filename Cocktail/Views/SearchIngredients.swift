
import SwiftUI

struct SearchIngredients: View {
    @State private var Ingredient1 = ""
    @State private var Ingredient2 = ""
    @State private var Ingredient3 = ""
    @State private var Ingredient1View = ""
    @State private var Ingredient2View = ""
    @State private var Ingredient3View = ""
    @State private var Ingredients = ""
    @State private var Number1 = 0
    @State private var replaced = ""
    @State private var searchIngredient = ""
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors2 = Gradient(colors: [Color("purple"), Color("pink")])
    init () {
        UITableView.appearance().backgroundColor = .clear
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemIndigo]
    }
    @ObservedObject var dataController = IngredientsDataController()
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                Text("Search ingredints by clicking on up to three from the list below")
                    .font(.custom("Futura Bold", size: 20))
                    .foregroundColor(.white)
                    .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                    .multilineTextAlignment(.center)
                    .padding()
                Button(action: {
                    Ingredient1 = ""
                    Ingredient2 = ""
                    Ingredient3 = ""
                    Ingredients = ""
                    Number1 = 0
                    replaced = ""
                    Ingredient1View = ""
                    Ingredient2View = ""
                    Ingredient3View = ""
                }){
                    Image(systemName: "arrow.uturn.left")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                HStack{
                    Text(Ingredient1View)
                        .font(.custom("Futura", size: 15))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                        .padding()
                    Text(Ingredient2View)
                        .font(.custom("Futura", size: 15))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                        .padding()
                    Text(Ingredient3View)
                        .font(.custom("Futura", size: 15))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                        .padding()
                }
                NavigationLink {
                    IngredientsDrinkView(ingredients: Ingredients)
                } label: {
                    VStack{
                        Text("Search")
                            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                            .font(.custom("Futura", size: 20))
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                            .cornerRadius(.infinity)
                    }
                }
                Group {
                    ZStack(alignment: .leading) {
                        if searchIngredient.isEmpty {
                            Text("Search ingredient")
                                .font(.custom("Futura", size: 20))
                                .foregroundColor(.indigo)
                        }
                        TextField("", text: $searchIngredient)
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
                if searchIngredient.isEmpty == true {
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.ingredientsInfo?.drinks ?? [], id: \.self) { non in
                            
                            Button(action: {
                                print(non.strIngredient1 ?? "nothing")
                                if Number1 == 0 {
                                    Ingredient1 = non.strIngredient1 ?? ""
                                    Ingredient1View = non.strIngredient1 ?? ""
                                    replaced = Ingredient1.replacingOccurrences(of: " ", with: "_")
                                    Ingredient1 = replaced
                                    Number1 = 1
                                    Ingredients = Ingredient1
                                }else if Number1 == 1 {
                                    Ingredient2 = non.strIngredient1 ?? ""
                                    Ingredient2View = non.strIngredient1 ?? ""
                                    replaced = Ingredient2.replacingOccurrences(of: " ", with: "_")
                                    Ingredient2 = replaced
                                    Number1 = 2
                                    Ingredients = ("\(Ingredient1),\(Ingredient2)")
                                }else if Number1 == 2 {
                                    Ingredient3 = non.strIngredient1 ?? ""
                                    Ingredient3View = non.strIngredient1 ?? ""
                                    replaced = Ingredient3.replacingOccurrences(of: " ", with: "_")
                                    Ingredient3 = replaced
                                    Number1 = 3
                                    Ingredients = ("\(Ingredient1),\(Ingredient2),\(Ingredient3)")
                                }
                            }){
                                Text(non.strIngredient1 ?? "Drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 60, alignment: .leading)
                                    .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
                            }
                        }.listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeCocktailList)
                } else {
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        ForEach(dataController.ingredientsInfo?.drinks.filter { $0.strIngredient1!.contains(searchIngredient) }  ?? [], id: \.self ) { non in
                            Button(action: {
                                print(non.strIngredient1 ?? "nothing")
                                if Number1 == 0 {
                                    Ingredient1 = non.strIngredient1 ?? ""
                                    Ingredient1View = non.strIngredient1 ?? ""
                                    replaced = Ingredient1.replacingOccurrences(of: " ", with: "_")
                                    Ingredient1 = replaced
                                    Number1 = 1
                                    Ingredients = Ingredient1
                                }else if Number1 == 1 {
                                    Ingredient2 = non.strIngredient1 ?? ""
                                    Ingredient2View = non.strIngredient1 ?? ""
                                    replaced = Ingredient2.replacingOccurrences(of: " ", with: "_")
                                    Ingredient2 = replaced
                                    Number1 = 2
                                    Ingredients = ("\(Ingredient1),\(Ingredient2)")
                                }else if Number1 == 2 {
                                    Ingredient3 = non.strIngredient1 ?? ""
                                    Ingredient3View = non.strIngredient1 ?? ""
                                    replaced = Ingredient3.replacingOccurrences(of: " ", with: "_")
                                    Ingredient3 = replaced
                                    Number1 = 3
                                    Ingredients = ("\(Ingredient1),\(Ingredient2),\(Ingredient3)")
                                }
                            }){
                                Text(non.strIngredient1 ?? "Drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 60, alignment: .leading)
                                    .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
                            }
                        }.listRowBackground(Color.clear)
                    }.frame(height: UIScreen.frameSizeCocktailList)
                }
            }
        }
        .onAppear {
            dataController.fetch()
            Ingredient1 = ""
            Ingredient2 = ""
            Ingredient3 = ""
            Ingredients = ""
            Ingredient1View = ""
            Ingredient2View = ""
            Ingredient3View = ""
            Number1 = 0
            replaced = ""
        }
    }
}

struct SearchIngredients_Previews: PreviewProvider {
    static var previews: some View {
        SearchIngredients()
    }
}
