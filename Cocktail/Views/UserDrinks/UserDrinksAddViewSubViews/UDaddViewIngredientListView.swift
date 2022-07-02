//
//  UDaddViewIngredientListView.swift
//  Cocktail
//
//  Created by Mark Wike on 02/07/2022.
//

import SwiftUI

struct UDaddViewIngredientListView: View {
    @StateObject var viewModel = UserDrinksAddViewViewModel()
    var body: some View {
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

struct UDaddViewIngredientListView_Previews: PreviewProvider {
    static var previews: some View {
        UDaddViewIngredientListView()
    }
}
