//
//  CocktailView.swift
//  Cocktail
//
//  Created by Mark Wike on 14/04/2022.
//

import SwiftUI

struct CocktailView: View {
    @StateObject var cocktailDataController = CocktailDataController()
    var drinkId: String
    var numberOfIngredients = 0
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
   
    var body: some View {
        ZStack{

            LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        VStack{
            ForEach(cocktailDataController.cocktailInfo?.drinks ?? [], id: \.self) { drink in
                ZStack{
                    let test = drink.strDrinkThumb ?? "drink thumb"
                    let url1 = URL(string: test)
                    AsyncImage(
                        url: url1,
                        content: { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                .frame(maxWidth: 400, maxHeight: 250)
                                .shadow(color: .blue.opacity(0.9), radius: 10, x: 5, y: 5)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                }
                .onTapGesture {
                    cocktailDataController.fetch(DrinkID: drinkId)
                }
            
                  
                Text(drink.strDrink ?? "Drink")
                    .font(.custom("Futura Bold", size: 20))
                    .foregroundColor(.blue).opacity(1.6)
                Text(drink.strAlcoholic ?? "Alcoholic")
                    .font(.custom("Futura", size: 20))
               
                    .frame(width: 300, alignment: .center)
                    .foregroundColor(.white)
                    
                VStack{
              
                    let GlassText = "Best served in a \(drink.strGlass?.lowercased() ?? " no glass")"
                    
              
                    Text(GlassText)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                        
                }
                HStack {
                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.blue)
                             

                                VStack {
                                    Text("Instructions")
                                        .font(.custom("Futura", size: 20))
                                    
                                        .frame(width: 300, alignment: .center)
                                        .foregroundColor(.white)
                        
                                //    Spacer()
                                
                                Text(drink.strInstructions ?? "instructions")
                                    .font(.custom("Futura", size: 15))
                                
                                    .frame(width: 300, alignment: .center)
                                    .foregroundColor(.white)
                                    .padding()
                                }
                            }
                            .padding()
                            ZStack{
                        
                                VStack(spacing: 20){
                                    Text("Ingredients")
                                        .font(.custom("Futura", size: 20))
                                   
                                        .frame(width: 300, alignment: .center)
                                        .foregroundColor(.white)
                                        .padding()
                                    Spacer()
                                    if drink.strMeasure1 == nil {
                                        
                                    }else{
                                    HStack {
                                        
                                        ZStack{
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                        Image(drink.strIngredient1 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure1 ?? "") \(drink.strIngredient1 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        if drink.strMeasure1 == "" {
                                   
                                        }
                                        Spacer()
                                    }
                                    }
                                    
                                    if drink.strMeasure2 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                        Image(drink.strIngredient2 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure2 ?? "") \(drink.strIngredient2 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                    }
                                    if drink.strMeasure3 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                        Image(drink.strIngredient3 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure3 ?? "") \(drink.strIngredient3 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                    }
                                    if drink.strMeasure4 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                        Image(drink.strIngredient4 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure4 ?? "") \(drink.strIngredient4 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                    }
                                    if drink.strMeasure5 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                        Image(drink.strIngredient5 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure5 ?? "") \(drink.strIngredient5 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                    }
                                    if drink.strMeasure6 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                          
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                            
                                        Image(drink.strIngredient6 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure6 ?? "") \(drink.strIngredient6 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                }
                                
                                    if drink.strMeasure7 == nil {
                                        
                                    }else{
                                    HStack {
                                        ZStack{
                                          
                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)
                                            
                                        Image(drink.strIngredient7 ?? "bottle")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)
                                            
                                        
                                        }
                                        Text("\(drink.strMeasure7 ?? "") \(drink.strIngredient7 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                }
                                    VStack{
                                    if drink.strMeasure8 == nil {

                                    }else{
                                    HStack {
                                        ZStack{

                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)

                                        Image(drink.strIngredient8 ?? "")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)


                                        }
                                        Text("\(drink.strMeasure8 ?? "") \(drink.strIngredient8 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                }

                                    if drink.strMeasure9 == nil {

                                    }else{
                                    HStack {
                                        ZStack{

                                            Circle()
                                                    .foregroundColor(.blue)
                                                    .frame(width: 40, height: 40.0)

                                        Image(drink.strIngredient9 ?? "")
                                                .resizable()
                                            .frame(width: 35, height: 35.0)


                                        }
                                        Text("\(drink.strMeasure9 ?? "") \(drink.strIngredient9 ?? "")")
                                            .font(.custom("Futura", size: 15))
                                            .foregroundColor(.blue).opacity(1.6)
                                        Spacer()
                                    }
                                }
//
                            
                                    
                                    }
                                    
                                }
                            }
                        }
                    }
                }
            }
            }
            Spacer()
        }
        .onAppear {
            cocktailDataController.fetch(DrinkID: drinkId)
        }
    }
}

struct CocktailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailView(drinkId: practiceDrinkID)
    }
}