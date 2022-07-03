//
//  UserDrinkMenuListView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct UserDrinkMenuListView: View {
    var drinkName = ""
    var body: some View {
        VStack {
            Text(drinkName)
                .font(.custom("Futura", size: 20))
                .foregroundColor(.white)
                .frame(width: 200, height: 60, alignment: .leading)
                .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
            ListLineView()
        }
    }
}

struct UserDrinkMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinkMenuListView()
    }
}
