//
//  SearchingredientsHeaderView.swift
//  Cocktail
//
//  Created by Mark Wike on 29/06/2022.
//

import SwiftUI

struct SearchingredientsHeaderView: View {
    var body: some View {
        Text("Search ingredints by clicking on up to three from the list below")
            .font(.custom("Futura Bold", size: 20))
            .foregroundColor(.white)
            .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
            .padding(.horizontal)
            .frame(height: 150)
            .multilineTextAlignment(.center)
    }
}

struct SearchingredientsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingredientsHeaderView()
    }
}
