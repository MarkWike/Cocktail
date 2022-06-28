//
//  rumButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 17/04/2022.
//

import SwiftUI

struct rumButton: View {
    var body: some View {
        ZStack {
            Image("rumButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 100, height: 100)
            VStack{
                Text("Rum")
                    .font(.custom("Futura Bold", size: 20))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            }
        }
    }
}


struct rumButtonView_Previews: PreviewProvider {
    static var previews: some View {
        rumButton()
    }
}
