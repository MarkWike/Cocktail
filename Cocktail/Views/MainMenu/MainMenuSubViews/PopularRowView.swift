//
//  PopularRowView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct PopularRowView: View {
    var drinkImage = ""
    var drinkName = ""
    
    var body: some View {
        ZStack{
            let test = drinkImage
            let url1 = URL(string: test)
            AsyncImage(
                url: url1,
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        .frame(maxWidth: 100, maxHeight: 100)
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                },
                placeholder: {
                    ProgressView()
                }
            )
            ZStack{
                Text(drinkName)
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
            }
        }
    }
}

struct PopularRowView_Previews: PreviewProvider {
    static var previews: some View {
        PopularRowView()
    }
}
