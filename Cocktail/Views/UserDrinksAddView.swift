//
//  UserDrinksAddView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinksAddView: View {
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    @State private var strDrink = ""
    @State private var strCategory = ""
    @State private var strAlcoholic = ""
    @State private var strGlass = ""
    @State private var textFieldData = ""
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
    @State private var showingAlert = false
    @FetchRequest(sortDescriptors: []) private var drink: FetchedResults<UserDrinksEntity>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                VStack{
                    Text("Add you own cocktails to the app")
                        .font(.custom("Futura Bold", size: 20))
                        .foregroundColor(.white)
                        .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
                        .multilineTextAlignment(.center)
                        .padding()
                    Group {
                        ZStack(alignment: .leading) {
                            if strDrink.isEmpty {
                                Text("Name of drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $strDrink)
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
                    Group {
                        ZStack(alignment: .leading) {
                            if strAlcoholic.isEmpty {
                                Text("Type of drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $strAlcoholic)
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
                    Group {
                        ZStack(alignment: .leading) {
                            if strGlass.isEmpty {
                                Text("Serving glass")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $strGlass)
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
                    Group {
                        ZStack(alignment: .leading) {
                            if strInstructions.isEmpty {
                                Text("Instructions")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $strInstructions)
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
                    Group {
                        ZStack(alignment: .leading) {
                            if temp.isEmpty {
                                Text("Ingredient")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $temp)
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
                }
                HStack {
                    Button(action:{
                        if temp == "" {
                            
                        }else{
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
                    }){
                        Text("Add Ingredient")
                            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                            .font(.custom("Futura", size: 20))
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                            .cornerRadius(.infinity)
                    }
                    Button(action: {
                        let drink = UserDrinksEntity(context: moc)
                        drink.strDrink = strDrink
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
                        
                        if strDrink == ""{
                            
                        }else{
                            try? moc.save()
                            showingAlert = true
                            strDrink = ""
                            strCategory = ""
                            strAlcoholic = ""
                            strGlass = ""
                            textFieldData = ""
                            strInstructions = ""
                            strIngredient1 = ""
                            strIngredient2 = ""
                            strIngredient3 = ""
                            strIngredient4 = ""
                            strIngredient5 = ""
                            strIngredient6 = ""
                            strIngredient7 = ""
                            strIngredient8 = ""
                            strIngredient9 = ""
                            strIngredient10 = ""
                            strIngredient11 = ""
                            strIngredient12 = ""
                            strIngredient13 = ""
                            strIngredient14 = ""
                            strIngredient15 = ""
                            strMeasure1 = ""
                            strMeasure2 = ""
                            strMeasure3 = ""
                            strMeasure4 = ""
                            strMeasure5 = ""
                            strMeasure6 = ""
                            strMeasure7 = ""
                            strMeasure8 = ""
                            strMeasure9 = ""
                            strMeasure10 = ""
                            strMeasure11 = ""
                            strMeasure12 = ""
                            strMeasure13 = ""
                            strMeasure14 = ""
                            strMeasure15 = ""
                            number = 1
                            temp = ""
                        }
                    }){
                        Text("Add Drink")
                            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                            .font(.custom("Futura", size: 20))
                            .foregroundColor(Color.white)
                            .background(Color.indigo)
                            .cornerRadius(.infinity)
                    }
                }
                VStack{
                    Text(strIngredient1)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient2)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient3)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient4)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient5)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient6)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient7)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient8)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient9)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(strIngredient10)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                }
            }
        }
        .alert("The drink been added", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct UserDrinksAddView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksAddView()
    }
}
