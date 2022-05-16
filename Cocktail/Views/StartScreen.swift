//
//  StartScreen.swift
//  Cocktail
//
//  Created by Mark Wike on 07/04/2022.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        VStack{
            Text("Cocktail app!")
                .foregroundColor(Color.gray)
            Text("something here")
                .foregroundColor(Color.gray)
        }
        }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
