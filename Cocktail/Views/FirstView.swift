//
//  FirstView.swift
//  Cocktail
//
//  Created by Mark Wike on 24/05/2022.
//

import SwiftUI

struct FirstView: View {
    
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("THE")
                        .font(.custom("Futura Bold", size: 40))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.4), radius: 10, x: 5, y: 5)
                    Text("COCKTAIL")
                        .font(.custom("Futura Bold", size: 40))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.4), radius: 10, x: 5, y: 5)
                    
                    Text("GUIDE")
                        .font(.custom("Futura Bold", size: 40))
                        .foregroundColor(.indigo)
                        .shadow(color: .white.opacity(0.4), radius: 10, x: 5, y: 5)
                    
                    Text("Are you over 21?")
                        .font(.custom("Futura Bold", size: 20))
                        .foregroundColor(.white)
                        .shadow(color: .indigo.opacity(0.4), radius: 10, x: 5, y: 5)
                        .padding()
                    HStack{
                        
                        NavigationLink(destination: SwiftUIView1()) {
                            ZStack{
                                Capsule()
                                    .fill(.indigo)
                                    .frame(width: 100, height: 50)
                                    .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                Text("Yes")
                                    .font(.custom("Futura Bold", size: 30))
                                    .foregroundColor(.white).opacity(1.6)
                            }
                        }
                        NavigationLink(destination: NonView()) {
                            ZStack{
                                Capsule()
                                    .fill(.indigo)
                                    .frame(width: 100, height: 50)
                                    .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                Text("No")
                                    .font(.custom("Futura Bold", size: 30))
                                    .foregroundColor(.white).opacity(1.6)
                            }
                        }
                    }
                }
            }
        }
    }
}
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
