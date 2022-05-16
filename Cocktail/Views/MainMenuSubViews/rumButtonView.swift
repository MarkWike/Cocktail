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
                .frame(width: 150, height: 150)
             //   .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            VStack{
                Text("Rum")
                    .font(.custom("Futura Bold", size: 30))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                 //   .frame(width: 150, height: 60, alignment: .center)
                  //  .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            }
        }
    }
}


struct rumButtonView_Previews: PreviewProvider {
    static var previews: some View {
        rumButton()
    }
}
