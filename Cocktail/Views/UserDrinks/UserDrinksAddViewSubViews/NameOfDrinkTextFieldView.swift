//
//  NameOfDrinkTextFieldView.swift
//  Cocktail
//
//  Created by Mark Wike on 02/07/2022.
//

import SwiftUI

struct NameOfDrinkTextFieldView: View {
    @StateObject var viewModel = UserDrinksAddViewViewModel()
    var body: some View {
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
    }
}

struct NameOfDrinkTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        NameOfDrinkTextFieldView()
    }
}
