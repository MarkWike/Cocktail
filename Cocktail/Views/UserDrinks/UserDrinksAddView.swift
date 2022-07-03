//
//  UserDrinksAddView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/05/2022.
//

import SwiftUI

struct UserDrinksAddView: View {
    @StateObject var viewModel = UserDrinksAddViewViewModel()
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    @FetchRequest(sortDescriptors: []) private var drink: FetchedResults<UserDrinksEntity>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            ScrollView(Axis.Set.vertical,showsIndicators: false) {
                VStack{
                    UDaddViewTitleView()
                    Group {
                        ZStack(alignment: .leading) {
                            if viewModel.strDrink.isEmpty {
                                Text("Name of drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.strDrink)
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
                            if viewModel.strAlcoholic.isEmpty {
                                Text("Type of drink")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.strAlcoholic)
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
                            if viewModel.strGlass.isEmpty {
                                Text("Serving glass")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.strGlass)
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
                            if viewModel.strInstructions.isEmpty {
                                Text("Instructions")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.strInstructions)
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
                            if viewModel.temp.isEmpty {
                                Text("Ingredient")
                                    .font(.custom("Futura", size: 20))
                                    .foregroundColor(.indigo)
                            }
                            TextField("", text: $viewModel.temp)
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
                        viewModel.buttonAction()
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
                        drink.strDrink = viewModel.strDrink
                        drink.strAlcoholic = viewModel.strAlcoholic
                        drink.strGlass = viewModel.strGlass
                        drink.strInstructions = viewModel.strInstructions
                        drink.strIngredient1 = viewModel.strIngredient1
                        drink.strIngredient2 = viewModel.strIngredient2
                        drink.strIngredient3 = viewModel.strIngredient3
                        drink.strIngredient4 = viewModel.strIngredient4
                        drink.strIngredient5 = viewModel.strIngredient5
                        drink.strIngredient6 = viewModel.strIngredient6
                        drink.strIngredient7 = viewModel.strIngredient7
                        drink.strIngredient8 = viewModel.strIngredient8
                        drink.strIngredient9 = viewModel.strIngredient9
                        drink.strIngredient10 = viewModel.strIngredient10
                        drink.strMeasure1 = viewModel.strMeasure1
                        drink.strMeasure2 = viewModel.strMeasure2
                        drink.strMeasure3 = viewModel.strMeasure3
                        drink.strMeasure4 = viewModel.strMeasure4
                        drink.strMeasure5 = viewModel.strMeasure5
                        drink.strMeasure6 = viewModel.strMeasure6
                        drink.strMeasure7 = viewModel.strMeasure7
                        drink.strMeasure8 = viewModel.strMeasure8
                        drink.strMeasure9 = viewModel.strMeasure9
                        drink.strMeasure10 = viewModel.strMeasure10
                        
                        if viewModel.strDrink == ""{
                            
                        }else{
                            try? moc.save()
                            viewModel.showingAlert = true
                            viewModel.strDrink = ""
                            viewModel.strCategory = ""
                            viewModel.strAlcoholic = ""
                            viewModel.strGlass = ""
                            viewModel.textFieldData = ""
                            viewModel.strInstructions = ""
                            viewModel.strIngredient1 = ""
                            viewModel.strIngredient2 = ""
                            viewModel.strIngredient3 = ""
                            viewModel.strIngredient4 = ""
                            viewModel.strIngredient5 = ""
                            viewModel.strIngredient6 = ""
                            viewModel.strIngredient7 = ""
                            viewModel.strIngredient8 = ""
                            viewModel.strIngredient9 = ""
                            viewModel.strIngredient10 = ""
                            viewModel.strIngredient11 = ""
                            viewModel.strIngredient12 = ""
                            viewModel.strIngredient13 = ""
                            viewModel.strIngredient14 = ""
                            viewModel.strIngredient15 = ""
                            viewModel.strMeasure1 = ""
                            viewModel.strMeasure2 = ""
                            viewModel.strMeasure3 = ""
                            viewModel.strMeasure4 = ""
                            viewModel.strMeasure5 = ""
                            viewModel.strMeasure6 = ""
                            viewModel.strMeasure7 = ""
                            viewModel.strMeasure8 = ""
                            viewModel.strMeasure9 = ""
                            viewModel.strMeasure10 = ""
                            viewModel.strMeasure11 = ""
                            viewModel.strMeasure12 = ""
                            viewModel.strMeasure13 = ""
                            viewModel.strMeasure14 = ""
                            viewModel.strMeasure15 = ""
                            viewModel.number = 1
                            viewModel.temp = ""
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
                    Text(viewModel.strIngredient1)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient2)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient3)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient4)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient5)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient6)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient7)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient8)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient9)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    Text(viewModel.strIngredient10)
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                }
            }
        }
        .alert("The drink been added", isPresented: $viewModel.showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct UserDrinksAddView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksAddView()
    }
}
