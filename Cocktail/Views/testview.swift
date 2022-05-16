//
//  testview.swift
//  Cocktail
//
//  Created by Mark Wike on 23/04/2022.
//

import SwiftUI

struct testview: View {
    @ObservedObject var dataController = LatestDataController()
    var body: some View {
        ScrollView(Axis.Set.horizontal,showsIndicators: true) {
            
            HStack{
                
                ForEach(dataController.latestInfo?.drinks ?? [], id: \.self) { latestDrink in
                    NavigationLink {
                        CocktailView(drinkId: latestDrink.idDrink ?? "11007")
                        //   TestView5()
                        
                        
                    }label: {
                        
                        ZStack{
                            let test1 = latestDrink.strDrinkThumb ?? "drink thumb"
                            let url11 = URL(string: test1)
                            AsyncImage(
                                url: url11,
                                content: { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                        .frame(maxWidth: 150, maxHeight: 150)
                                        .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                },
                                placeholder: {
                                    ProgressView()
                                }
                            )
    
                            VStack{
                                Text(latestDrink.strDrink ?? "11007")
                                    .font(.custom("Futura Bold", size: 20))
                                    .foregroundColor(.white).opacity(1.6)
                                    .frame(width: 150, height: 150,alignment: .center)
                            }
                        }
                        
                    }
                    
                }
            }
        }
    }
}

struct testview_Previews: PreviewProvider {
    static var previews: some View {
        testview()
    }
}
