//
//  SearchDrinkSearchTitle.swift
//  Cocktail
//
//  Created by Mark Wike on 01/07/2022.
//

import SwiftUI

struct SearchDrinkSearchButtonView: View {
    var body: some View {
        Text("Search")
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
            .font(.custom("Futura", size: 20))
            .foregroundColor(Color.white)
            .background(Color.indigo)
            .cornerRadius(.infinity)
    }
}

struct SearchDrinkSearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDrinkSearchButtonView()
    }
}
