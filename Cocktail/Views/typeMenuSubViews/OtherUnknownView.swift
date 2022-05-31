//
//  OtherUnknownView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct OtherUnknownView: View {
    var body: some View {
        ZStack {
            Image("other")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 130, height: 130)
               // .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            VStack{
                Text("Other or Unknown")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                    .frame(width: 100, height: 50, alignment: .center)
                  //  .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            }
        }
    }
}

struct OtherUnknownView_Previews: PreviewProvider {
    static var previews: some View {
        OtherUnknownView()
    }
}
