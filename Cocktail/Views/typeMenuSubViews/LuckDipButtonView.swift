//
//  LuckDipButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 12/06/2022.
//

import SwiftUI

struct LuckDipButtonView: View {
    var body: some View {
        ZStack {
            Image("party")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 100, height: 100)
            VStack{
                Text("Lucky Dip")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                    .frame(width: 100, height: 40, alignment: .center)
            }
        }
    }
}

struct LuckDipButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LuckDipButtonView()
    }
}
