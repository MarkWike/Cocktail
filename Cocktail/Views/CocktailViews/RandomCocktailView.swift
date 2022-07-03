import SwiftUI

struct RandomView: View {
    @StateObject var randomCocktailDataController = RandomCocktailDataController()
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                ForEach(randomCocktailDataController.randomCocktailInfo?.drinks ?? [], id: \.self) { drink in
                    cocktailViewcoclktailTitleView(drinkName: drink.strDrink ?? "Drink")
                    cocktailViewImageView(drinkImage: drink.strDrinkThumb ?? "drink thumb")
                        .onTapGesture {
                            randomCocktailDataController.fetch()
                        }
                    cocktailViewInfoView(drinktype: drink.strAlcoholic ?? "Alcoholic", drinkGlass: drink.strGlass?.lowercased() ?? "glass")
                    
                    HStack {
                        ScrollView(Axis.Set.vertical,showsIndicators: false) {
                            VStack{
                                
                                cocktailViewInstructionsView(drinkInstructions: drink.strInstructions ?? "instructions")
                                
                                ZStack{
                                    VStack(spacing: 20){
                                        cocktailViewIngredientsheaderView()
                                        
                                        if drink.strMeasure1 == nil {
                                            
                                        }else{
                                            cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient1 ?? "", drinkMeasure: drink.strMeasure1 ?? "")
                                            
                                        }
                                        if drink.strMeasure2 == nil {
                                            
                                        }else{
                                            cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient2 ?? "", drinkMeasure: drink.strMeasure2 ?? "")
                                            
                                        }
                                        if drink.strMeasure3 == nil {
                                            
                                        }else{
                                            cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient3 ?? "", drinkMeasure: drink.strMeasure3 ?? "")
                                            if drink.strMeasure4 == nil {
                                                
                                            }else{
                                                cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient4 ?? "", drinkMeasure: drink.strMeasure4 ?? "")
                                            }
                                            if drink.strMeasure5 == nil {
                                                
                                            }else{
                                                cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient5 ?? "", drinkMeasure: drink.strMeasure5 ?? "")
                                            }
                                            if drink.strMeasure6 == nil {
                                                
                                            }else{
                                                cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient6 ?? "", drinkMeasure: drink.strMeasure6 ?? "")
                                            }
                                            if drink.strMeasure7 == nil {
                                                
                                            }else{
                                                cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient7 ?? "", drinkMeasure: drink.strMeasure7 ?? "")
                                            }
                                            if drink.strMeasure8 == nil {
                                                
                                            }else{
                                                cocktailIngredientsTextBoxView(drinkIngredient: drink.strIngredient8 ?? "", drinkMeasure: drink.strMeasure8 ?? "")
                                            }
                                        }
                                    }
                                }
                            }
                        }.frame(height: UIScreen.frameSizeCocktailList)
                    }
                }
            }
            Spacer()
        }
        .onAppear {
            randomCocktailDataController.fetch()
        }
    }
}



struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}







