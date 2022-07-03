//
//  cocktailViewInfoView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct cocktailViewInfoView: View {
    var drinktype = ""
    var drinkGlass = ""
    var body: some View {
        Text(drinktype)
            .font(.custom("Futura", size: 20))
            .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
            .frame(width: 300, alignment: .center)
            .foregroundColor(.white)
        VStack{
            let GlassText = "Best served in a \(drinkGlass)"
            Text(GlassText)
                .font(.custom("Futura", size: 20))
                .frame(width: 300, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct cocktailViewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        cocktailViewInfoView()
    }
}
