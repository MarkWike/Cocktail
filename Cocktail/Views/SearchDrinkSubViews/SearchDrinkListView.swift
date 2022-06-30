//
//  SearchDrinkListView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct SearchDrinkListView: View {
    @StateObject var viewModel = SearchDrinkViewModel()
    var imageName = ""
    var DrinkName = ""
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
                        .frame(maxWidth: 60, maxHeight: 60)
                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(DrinkName)
                .font(.custom("Futura", size: 20))
                .foregroundColor(.white)
                .frame(width: 200, height: 60, alignment: .leading)
                .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
        }
    }
}

struct SearchDrinkListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDrinkListView()
    }
}
