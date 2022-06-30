//
//  MostPopularView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct MostPopularView: View {
    var body: some View {
        HStack{
            Text("MOST POPULAR")
                .font(.custom("Futura Bold", size: 20))
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                .padding(.horizontal)
                .padding(.top)
            Spacer()
        }
    }
}

struct MostPopularView_Previews: PreviewProvider {
    static var previews: some View {
        MostPopularView()
    }
}
