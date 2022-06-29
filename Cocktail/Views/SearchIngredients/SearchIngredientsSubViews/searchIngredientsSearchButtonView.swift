//
//  searchIngredientsSearchButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct searchIngredientsSearchButtonView: View {
    var body: some View {
        VStack{
            Text("Search")
                .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                .font(.custom("Futura", size: 20))
                .foregroundColor(Color.white)
                .background(Color.indigo)
                .cornerRadius(.infinity)
        }
    }
}

struct searchIngredientsSearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        searchIngredientsSearchButtonView()
    }
}
