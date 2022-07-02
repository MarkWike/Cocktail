//
//  UDaddViewTitleView.swift
//  Cocktail
//
//  Created by Mark Wike on 02/07/2022.
//

import SwiftUI

struct UDaddViewTitleView: View {
    var body: some View {
        Text("Add you own cocktails to the app")
            .font(.custom("Futura Bold", size: 20))
            .foregroundColor(.white)
            .shadow(color: .white.opacity(0.2), radius: 10, x: 5, y: 15)
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct UDaddViewTitleView_Previews: PreviewProvider {
    static var previews: some View {
        UDaddViewTitleView()
    }
}
