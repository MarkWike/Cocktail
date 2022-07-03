//
//  UserDrinksMenuAddButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct UserDrinksMenuAddButtonView: View {
    var body: some View {
        Text("Add New Drink")
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
            .font(.custom("Futura", size: 20))
            .foregroundColor(Color.white)
            .background(Color.indigo)
            .cornerRadius(.infinity)
    }
}

struct UserDrinksMenuAddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UserDrinksMenuAddButtonView()
    }
}
