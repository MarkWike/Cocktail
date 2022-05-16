//
//  GinView.swift
//  Cocktail
//
//  Created by Mark Wike on 13/04/2022.
//

import SwiftUI

struct GinView: View {
    @ObservedObject var dataController = GinDataController()
    var body: some View {
        ZStack{
    //        NavigationView {
                List {
                    ForEach(dataController.ginInfo?.drinks ?? [], id: \.self) { gin in
                        NavigationLink {
                            CocktailView(drinkId: gin.idDrink ?? "11007")
                        } label: {
                            VStack{
                                HStack{
                                    let test = gin.strDrinkThumb ?? "drink thumb"
                                    let url1 = URL(string: test)
                                    AsyncImage(
                                        url: url1,
                                        content: { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                                .frame(maxWidth: 70, maxHeight: 70)
                                                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                            
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    
                                    Text(gin.strDrink ?? "Drink")
                                        .font(.custom("Futura Bold", size: 15))
                                        .foregroundColor(.blue).opacity(0.9)
                                        .frame(width: 200, alignment: .leading)
                                    
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Gin")
     //   }
        .onAppear {
            dataController.fetch()
        }
    }
}


struct GinView_Previews: PreviewProvider {
    static var previews: some View {
        GinView()
    }
}
