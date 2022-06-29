//
//  searchIngredientsTextFieldView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct searchIngredientsTextFieldView: View {
    @StateObject var viewModel = SearchingredientsViewModel()
    var body: some View {
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
    }
}

struct searchIngredientsTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        searchIngredientsTextFieldView()
    }
}
