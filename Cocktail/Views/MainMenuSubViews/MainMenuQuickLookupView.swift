//
//  MainMenuQuickLookupView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct MainMenuQuickLookupView: View {
    var body: some View {
        HStack{
            Text("QUICK LOOKUP")
                .font(.custom("Futura Bold", size: 20))
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                .padding(.top)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct MainMenuQuickLookupView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuQuickLookupView()
    }
}
