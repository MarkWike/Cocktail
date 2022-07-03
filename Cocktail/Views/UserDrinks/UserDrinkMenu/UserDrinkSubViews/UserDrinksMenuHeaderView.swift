//
//  UserDrinksMenuHeaderView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct UserDrinksMenuHeaderView: View {
    var body: some View {
        HStack{
            Text("YOUR DRINKS")
                .font(.custom("Futura Bold", size: 20))
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                .padding(.horizontal)
                .padding(.top)
            Spacer()
        }
    }
}

struct UserDrinksMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksMenuHeaderView()
    }
}
