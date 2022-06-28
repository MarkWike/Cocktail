//
//  cocktailsButtonview.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct cocktailsButtonview: View {
    var body: some View {
        ZStack {
            Image("Cocktail-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 130, height: 130)
            VStack{
                Text("Cocktails")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            }
        }
    }
}

struct cocktailsButtonview_Previews: PreviewProvider {
    static var previews: some View {
        cocktailsButtonview()
    }
}
