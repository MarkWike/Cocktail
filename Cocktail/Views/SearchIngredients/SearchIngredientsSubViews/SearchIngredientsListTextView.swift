//
//  SearchIngredientsListTextView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct SearchIngredientsListTextView: View {
    var drink = ""
    var body: some View {
        Text(drink)
            .font(.custom("Futura", size: 20))
            .foregroundColor(.white)
            .frame(width: 200, height: 60, alignment: .leading)
            .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
    }
}

struct SearchIngredientsListTextView_Previews: PreviewProvider {
    static var previews: some View {
        SearchIngredientsListTextView()
    }
}
