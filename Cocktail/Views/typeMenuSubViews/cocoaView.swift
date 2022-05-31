//
//  cocoaView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//

import SwiftUI

struct cocoaView: View {
    var body: some View {
        ZStack {
            Image("cocoa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: 130, height: 130)
            //    .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            VStack{
                Text("Cocoa")
                    .font(.custom("Futura Bold", size: 17))
                    .foregroundColor(.white).opacity(1.6)
                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                 //   .frame(width: 150, height: 40, alignment: .center)
                  //  .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            }
        }
    }
}

struct cocoaView_Previews: PreviewProvider {
    static var previews: some View {
        cocoaView()
    }
}
