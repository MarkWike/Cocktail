//
//  vodkaButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 17/04/2022.
//

import SwiftUI

struct vodkaButton: View {
    var body: some View {
        ZStack {
            Image("vodkaButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 100, height: 100)
            VStack{
                Text("Vodka")
                    .font(.custom("Futura Bold", size: 20))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            }
        }
    }
}

struct vodkaButtonView_Previews: PreviewProvider {
    static var previews: some View {
        vodkaButton()
    }
}
