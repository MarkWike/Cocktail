//
//  searchIngredientsBackButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct searchIngredientsBackButtonView: View {
    var body: some View {
        Image(systemName: "arrow.uturn.left")
            .font(.largeTitle)
            .foregroundColor(.white)
    }
}

struct searchIngredientsBackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        searchIngredientsBackButtonView()
    }
}
