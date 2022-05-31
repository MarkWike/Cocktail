//
//  NonView.swift
//  Cocktail
//
//  Created by Mark Wike on 25/05/2022.
//

import SwiftUI

struct NonView: View {
    @ObservedObject var dataController = NonDataController()
    var body: some View {
        ZStack{
    //        NavigationView {
                List {
                    ForEach(dataController.nonInfo?.drinks ?? [], id: \.self) { non in
                        NavigationLink {
                            CocktailView(drinkId: non.idDrink ?? "11007")
                        } label: {
                            VStack{
                                HStack{
                                    let test = non.strDrinkThumb ?? "drink thumb"
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
                                    
                                    Text(non.strDrink ?? "Drink")
                                        .font(.custom("Futura Bold", size: 15))
                                        .foregroundColor(.blue).opacity(0.9)
                                        .frame(width: 200, alignment: .leading)
                                    
                                }
                            }
                        }
                    }
                 
                }
            
            }
            .navigationTitle("Non Alcoholic")
            .navigationBarHidden(true)
     //   }
        .onAppear {
            dataController.fetch()
        }
    }
}

struct NonView_Previews: PreviewProvider {
    static var previews: some View {
        NonView()
    }
}
