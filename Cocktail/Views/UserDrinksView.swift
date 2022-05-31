//
//  UserDrinksView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinksView: View {
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
    let GradientColors1 = Gradient(colors: [Color.blue.opacity(0.5), Color.blue])
    @FetchRequest(sortDescriptors: []) private var drink: FetchedResults<UserDrinksEntity>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        VStack {
         

            //            List(drink) { drinks in
            //                Text(drinks.strDrink ?? "")
            //
            //            }
            //        }
            List {
                ForEach(drink) { drinks in
                    NavigationLink {
                        ZStack{
                            LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
                            .ignoresSafeArea()
                            VStack{
                            Text(drinks.strDrink ?? "Drink")
                            .font(.custom("Futura Bold", size: 20))
                            .foregroundColor(.blue).opacity(1.6)
                        Text(drinks.strAlcoholic ?? "Alcoholic")
                            .font(.custom("Futura", size: 20))
                            .frame(width: 300, alignment: .center)
                            .foregroundColor(.white)
                        
                            let GlassText = "Best served in a \(drinks.strGlass?.lowercased() ?? "glass")"
                            Text(GlassText)
                                .font(.custom("Futura", size: 20))
                                .frame(width: 300, alignment: .center)
                                .foregroundColor(.white)
                        
                        HStack {
                            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                        VStack {
                                            Text("Instructions")
                                                .font(.custom("Futura", size: 20))
                                                .frame(width: 300, alignment: .center)
                                                .foregroundColor(.white)
                                            Text(drinks.strInstructions ?? "instructions")
                                                .font(.custom("Futura", size: 15))
                                                .frame(width: 300, alignment: .center)
                                                .foregroundColor(.white)
                                                .padding(.horizontal)
                                                .padding(.bottom)
                                        }
                                    }
                                    .padding()
                                    ZStack{
                                        VStack(spacing: 20){
                                            Text("Ingredients")
                                                .font(.custom("Futura", size: 20))
                                                .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                                .frame(width: 300, alignment: .center)
                                                .foregroundColor(.white)
                                                .padding(20)
                                            if drinks.strMeasure1 == nil {
                                            }else{
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drinks.strMeasure1 ?? "") \(drinks.strIngredient1 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                }
                                            }
                                            if drinks.strMeasure2 == nil {
                                            }else{
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drinks.strMeasure2 ?? "") \(drinks.strIngredient2 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                }
                                            }
                                            if drinks.strMeasure3 == nil {
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    HStack{
                                                        Text("\(drinks.strMeasure3 ?? "") \(drinks.strIngredient3 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                    }
                                                    Spacer()
                                                }
                                                if drinks.strMeasure4 == nil {
                                                }else{
                                                    ZStack{
                                                        Spacer()
                                                        RoundedRectangle(cornerRadius: 15.0)
                                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                            .frame(height: 40.0)
                                                            .padding(.horizontal)
                                                        Text("\(drinks.strMeasure4 ?? "") \(drinks.strIngredient4 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                        Spacer()
                                                    }
                                                }
                                                if drinks.strMeasure5 == nil {
                                                }else{
                                                    ZStack{
                                                        Spacer()
                                                        RoundedRectangle(cornerRadius: 15.0)
                                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                            .frame(height: 40.0)
                                                            .padding(.horizontal)
                                                        Text("\(drinks.strMeasure5 ?? "") \(drinks.strIngredient5 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                        Spacer()
                                                    }
                                                }
                                                if drinks.strMeasure6 == nil {
                                                }else{
                                                    ZStack{
                                                        Spacer()
                                                        RoundedRectangle(cornerRadius: 15.0)
                                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                            .frame(height: 40.0)
                                                            .padding(.horizontal)
                                                        Text("\(drinks.strMeasure6 ?? "") \(drinks.strIngredient6 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                        Spacer()
                                                    }
                                                }
                                                if drinks.strMeasure7 == "" {
                                                }else{
                                                    ZStack{
                                                        Spacer()
                                                        RoundedRectangle(cornerRadius: 15.0)
                                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                            .frame(height: 40.0)
                                                            .padding(.horizontal)
                                                        Text("\(drinks.strMeasure7 ?? "") \(drinks.strIngredient7 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                        Spacer()
                                                    }
                                                }
                                                if drinks.strMeasure8 == "" {
                                                }else{
                                                    ZStack{
                                                        Spacer()
                                                        RoundedRectangle(cornerRadius: 15.0)
                                                            .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                            .frame(height: 40.0)
                                                            .padding(.horizontal)
                                                        Text("\(drinks.strMeasure8 ?? "") \(drinks.strIngredient8 ?? "")")
                                                            .font(.custom("Futura", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                        Spacer()
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
                    }
                    } label: {
                        Text(drinks.strDrink ?? "")
                    }
                }
            }
        }
        }
    }
}

struct UserDrinksView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksView()
    }
}
