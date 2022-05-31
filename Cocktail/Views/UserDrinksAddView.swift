//
//  UserDrinksAddView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinksAddView: View {
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
    @State private var strDrink = ""
    @State private var strCategory = ""
    @State private var strAlcoholic = ""
    @State private var strGlass = ""
    
    @State private var strInstructions = ""
    @State private var strIngredient1 = ""
    @State private var strIngredient2 = ""
    @State private var strIngredient3 = ""
    @State private var strIngredient4 = ""
    @State private var strIngredient5 = ""
    @State private var strIngredient6 = ""
    @State private var strIngredient7 = ""
    @State private var strIngredient8 = ""
    @State private var strIngredient9 = ""
    @State private var strIngredient10 = ""
    @State private var strIngredient11 = ""
    @State private var strIngredient12 = ""
    @State private var strIngredient13 = ""
    @State private var strIngredient14 = ""
    @State private var strIngredient15 = ""
    @State private var strMeasure1 = ""
    @State private var strMeasure2 = ""
    @State private var strMeasure3 = ""
    @State private var strMeasure4 = ""
    @State private var strMeasure5 = ""
    @State private var strMeasure6 = ""
    @State private var strMeasure7 = ""
    @State private var strMeasure8 = ""
    @State private var strMeasure9 = ""
    @State private var strMeasure10 = ""
    @State private var strMeasure11 = ""
    @State private var strMeasure12 = ""
    @State private var strMeasure13 = ""
    @State private var strMeasure14 = ""
    @State private var strMeasure15 = ""
    @State private var number = 1
    @State private var temp = ""
    
    
    @FetchRequest(sortDescriptors: []) private var drink: FetchedResults<UserDrinksEntity>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                
                VStack{
                    TextField("Name of drink", text: $strDrink)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    TextField("Type of drink", text: $strAlcoholic)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    TextField("Serving glass", text: $strGlass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    TextField("Instructions ", text: $strInstructions)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
//                    TextEditor(text: $strInstructions)
//                                    .foregroundColor(.secondary)
//                                    .padding(.horizontal)
              }
                TextField("Ingredient", text: $temp)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button("Add ingredient"){
                    if number == 1 {
                        strIngredient1 = temp
                        number = 2
                        temp = ""
                    }else if number == 2 {
                        strIngredient2 = temp
                        number = 3
                        temp = ""
                    }else if number == 3 {
                        strIngredient3 = temp
                        number = 4
                        temp = ""
                    }else if number == 4 {
                        strIngredient4 = temp
                        number = 5
                        temp = ""
                    }else if number == 5 {
                        strIngredient5 = temp
                        number = 6
                        temp = ""
                    }else if number == 6 {
                        strIngredient6 = temp
                        number = 7
                        temp = ""
                    }else if number == 7 {
                        strIngredient7 = temp
                        number = 8
                        temp = ""
                    }else if number == 8 {
                        strIngredient8 = temp
                        number = 9
                        temp = ""
                    }else if number == 9 {
                        strIngredient9 = temp
                        number = 10
                        temp = ""
                    }else if number == 10 {
                        strIngredient10 = temp
                        number = 11
                        temp = ""
                    }
                    print(number)
                }
                
                
                VStack{
                    Text(strIngredient1)
                    Text(strIngredient2)
                    Text(strIngredient3)
                    Text(strIngredient4)
                    Text(strIngredient5)
                    Text(strIngredient6)
                    Text(strIngredient7)
                    Text(strIngredient8)
                    Text(strIngredient9)
                    Text(strIngredient10)
                }
                
                
                Button("Add ingredient"){
                    if number == 1 {
                        strIngredient1 = temp
                        number = 2
                        temp = ""
                    }else if number == 2 {
                        strIngredient2 = temp
                        number = 3
                        temp = ""
                    }else if number == 3 {
                        strIngredient3 = temp
                        number = 4
                        temp = ""
                    }else if number == 4 {
                        strIngredient4 = temp
                        number = 5
                        temp = ""
                    }else if number == 5 {
                        strIngredient5 = temp
                        number = 6
                        temp = ""
                    }else if number == 6 {
                        strIngredient6 = temp
                        number = 7
                        temp = ""
                    }else if number == 7 {
                        strIngredient7 = temp
                        number = 8
                        temp = ""
                    }else if number == 8 {
                        strIngredient8 = temp
                        number = 9
                        temp = ""
                    }else if number == 9 {
                        strIngredient9 = temp
                        number = 10
                        temp = ""
                    }else if number == 10 {
                        strIngredient10 = temp
                        number = 11
                        temp = ""
                    }
                    print(number)
                }
                
                Button("Add Drink"){
                    let drink = UserDrinksEntity(context: moc)
                    // drink.strDrink = ["Lampard", "Terry", "Drogba","Rubes"].randomElement()
                    drink.strDrink = strDrink
                    // this will save it to coredata
                    
                    
                    
                    drink.strAlcoholic = strAlcoholic
                    drink.strGlass = strGlass
                    drink.strInstructions = strInstructions
                    drink.strIngredient1 = strIngredient1
                    drink.strIngredient2 = strIngredient2
                    drink.strIngredient3 = strIngredient3
                    drink.strIngredient4 = strIngredient4
                    drink.strIngredient5 = strIngredient5
                    drink.strIngredient6 = strIngredient6
                    drink.strIngredient7 = strIngredient7
                    drink.strIngredient8 = strIngredient8
                    drink.strIngredient9 = strIngredient9
                    drink.strIngredient10 = strIngredient10
                    
                    drink.strMeasure1 = strMeasure1
                    drink.strMeasure2 = strMeasure2
                    drink.strMeasure3 = strMeasure3
                    drink.strMeasure4 = strMeasure4
                    drink.strMeasure5 = strMeasure5
                    drink.strMeasure6 = strMeasure6
                    drink.strMeasure7 = strMeasure7
                    drink.strMeasure8 = strMeasure8
                    drink.strMeasure9 = strMeasure9
                    drink.strMeasure10 = strMeasure10
                    
                    
                    
                    
                    
                    try? moc.save()
                }
            }
            
        }
    }
}

struct UserDrinksAddView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksAddView()
    }
}
