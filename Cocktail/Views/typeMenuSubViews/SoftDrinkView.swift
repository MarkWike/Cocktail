//
//  SoftDrinkView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct SoftDrinkView: View {
    var body: some View {
        ZStack {
            Image("softDrink")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 130, height: 130)
            VStack{
                Text("Soft Drinks")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                    .frame(width: 120, height: 40, alignment: .center)
            }
        }
    }
}

struct SoftDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        SoftDrinkView()
    }
}
