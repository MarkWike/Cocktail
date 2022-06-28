//
//  HomemadeView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct HomemadeView: View {
    var body: some View {
        ZStack {
            Image("homemade")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 130, height: 130)
            VStack{
                Text("Home Made")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            }
        }
    }
}

struct HomemadeView_Previews: PreviewProvider {
    static var previews: some View {
        HomemadeView()
    }
}
