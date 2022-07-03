//
//  cocktailViewImageView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct cocktailViewImageView: View {
    var drinkImage = ""
    
    var body: some View {
       
        let test = drinkImage
        let url1 = URL(string: test)
        AsyncImage(
            url: url1,
            content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    .frame(maxWidth: 150, maxHeight: 150)
                    .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
            },
            placeholder: {
                ProgressView()
            }
        )
    }
}

struct cocktailViewImageView_Previews: PreviewProvider {
    static var previews: some View {
        cocktailViewImageView()
    }
}
