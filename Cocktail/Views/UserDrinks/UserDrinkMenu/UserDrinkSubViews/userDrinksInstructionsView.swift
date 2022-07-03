//
//  userDrinksInstructionsView.swift
//  Cocktail
//
//  Created by Mark Wike on 03/07/2022.
//

import SwiftUI

struct userDrinksInstructionsView: View {
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    var drinkInstructions = ""
    var body: some View {
        ZStack{
        
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
            VStack {
            Text("Instructions")
                .font(.custom("Futura", size: 20))
                .frame(width: 300, alignment: .center)
                .foregroundColor(.white)
            Text(drinkInstructions)
                .font(.custom("Futura", size: 15))
                .frame(width: 300, alignment: .center)
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.bottom)
            }
        }.padding()
    }
}

struct userDrinksInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        userDrinksInstructionsView()
    }
}
