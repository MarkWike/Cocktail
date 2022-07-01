//
//  typeViewListView.swift
//  Cocktail
//
//  Created by Mark Wike on 01/07/2022.
//

import SwiftUI

struct typeViewListView: View {
    var imageName = ""
    var drinkName = ""
    var body: some View {
        HStack{
            let test = imageName
            let url1 = URL(string: test)
            AsyncImage(
                url: url1,
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        .frame(maxWidth: 70, maxHeight: 70)
                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(drinkName)
                .font(.custom("Futura", size: 20))
                .foregroundColor(.white)
                .frame(width: 200, height: 60, alignment: .leading)
                .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
        }
    }
}

struct typeViewListView_Previews: PreviewProvider {
    static var previews: some View {
        typeViewListView()
    }
}
