//
//  LatestRowView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct LatestRowView: View {
    var drinkImage = ""
    var drinkName = ""
    var body: some View {
        ZStack{
            let test1 = drinkImage
            let url11 = URL(string: test1)
            AsyncImage(
                url: url11,
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        .frame(maxWidth: 120, maxHeight: 100)
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                },
                placeholder: {
                    ProgressView()
                }
            )
            VStack{
                Text(drinkName)
                    .font(.custom("Futura Bold", size: 15))
                    .foregroundColor(.white).opacity(1.6)
                    .frame(width: 100, height: 60,alignment: .center)
                    .shadow(color: .black.opacity(0.9), radius: 10, x: 5, y: 5)
            }
        }
    }
}

struct LatestRowView_Previews: PreviewProvider {
    static var previews: some View {
        LatestRowView()
    }
}
