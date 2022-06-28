//
//  RandomListButtonView.swift
//  Cocktail
//
//  Created by Mark Wike on 12/06/2022.
//

import SwiftUI

struct RandomListButtonView: View {
    var body: some View {
        ZStack {
            Image("vodkaButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 100, height: 100)
            VStack{
                Text("Random List")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                    .frame(width: 100, height: 60, alignment: .center)
            }
        }
    }
}

struct RandomListButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomListButtonView()
    }
}
