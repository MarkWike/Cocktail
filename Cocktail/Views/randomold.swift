//
//  randomold.swift
//  Cocktail
//
//  Created by Mark Wike on 12/05/2022.
//

//import Foundation
//
//
//import SwiftUI
//
//struct RandomView: View {
//    @StateObject var randomCocktailDataController = RandomCocktailDataController()
//    
//    var body: some View {
//        VStack{
//            ForEach(randomCocktailDataController.randomCocktailInfo?.drinks ?? [], id: \.self) { drink in
//                ZStack{
//                    let test = drink.strDrinkThumb ?? "drink thumb"
//                    let url1 = URL(string: test)
//                    
//                    AsyncImage(
//                        url: url1,
//                        content: { image in
//                            image
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
//                                .frame(maxWidth: 400, maxHeight: 150)
//                                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
//                        },
//                        placeholder: {
//                            ProgressView()
//                        }
//                    )
//                }
//                .onTapGesture {
//                    randomCocktailDataController.fetch()
//                }
//                Text(drink.strDrink ?? "Drink")
//                    .font(.custom("Helvetica Neue ultraLight", size: 20))
//                Text(drink.strAlcoholic ?? "Alcoholic")
//                VStack{
//                    Text("Best served in a \(drink.strGlass ?? " no glass")")
//                }
//                HStack {
//                    ScrollView(Axis.Set.vertical,showsIndicators: false) {
//                        VStack{
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 20)
//                                    .fill(.white)
//                                    .shadow(color: .black.opacity(0.3), radius: 20, x: 10, y: 10)
//                                RoundedRectangle(cornerRadius: 20)
//                                    .stroke(.black, lineWidth: 3)
//                                    .shadow(color: .black.opacity(0.1), radius: 10, x: 5, y: 5)
//                                VStack {
//                                    Text("Instructions")
//                                    Spacer()
//                                }
//                                Text(drink.strInstructions ?? "instructions")
//                                    .frame(width: 300, height: 300, alignment: .center)
//                            }
//                            .padding()
//                            ZStack{
//                                Rectangle()
//                                    .fill(.green)
//                                VStack(spacing: 20){
//                                    Text("Ingredients")
//                                    Spacer()
//                                    HStack {
//                                        Image(drink.strIngredient1 ?? "")
//                                            .frame(width: 20, height: 20.0)
//                                        Text(drink.strMeasure1 ?? "")
//                                        Text(drink.strIngredient1 ?? "")
//                                    }
//                                    HStack {
//                                        Image(drink.strIngredient2 ?? "")
//                                            .frame(width: 20, height: 20.0)
//                                        Text(drink.strMeasure2 ?? "")
//                                        Text(drink.strIngredient2 ?? "")
//                                    }
//                                    HStack {
//                                        Image(drink.strIngredient3 ?? "tags")
//                                            .frame(width: 20, height: 20.0)
//                                        Text(drink.strMeasure3 ?? "tags")
//                                        Text(drink.strIngredient3 ?? "tags")
//                                    }
//                                    HStack {
//                                        Image(drink.strIngredient4 ?? "tags")
//                                            .frame(width: 20, height: 20.0)
//                                        Text(drink.strMeasure4 ?? "tags")
//                                        Text(drink.strIngredient4 ?? "tags")
//                                    }
//                                    HStack {
//                                        Image(drink.strIngredient5 ?? "")
//                                            .frame(width: 30, height: 30.0)
//                                        Text(drink.strMeasure5 ?? "")
//                                        Text(drink.strIngredient5 ?? "")
//                                    }
//                                    HStack {
//                                        Image(drink.strIngredient6 ?? "")
//                                        Text(drink.strMeasure6 ?? "")
//                                        Text(drink.strIngredient6 ?? "")
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//            Spacer()
//        }
//        .onAppear {
//            randomCocktailDataController.fetch()
//        }
//    }
//}
//
//
//
//struct RandomView_Previews: PreviewProvider {
//    static var previews: some View {
//        RandomView()
//    }
//}
//
//
//
//
//
//
//
