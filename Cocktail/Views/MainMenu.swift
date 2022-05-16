//
//  MainMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 07/04/2022.
//

import SwiftUI

struct MainMenu: View {
    @ObservedObject var dataController = PopularDataController()
    @ObservedObject var dataController1 = LatestDataController()
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
    var drinkId: String
    var body: some View {
        
        NavigationView {
            ZStack{
                
                LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                ScrollView(Axis.Set.vertical,showsIndicators: false) {
                    
                    VStack{
                        HStack{
                            Text("COCKTAILS")
                                .font(.custom("Futura Bold", size: 40))
                                .foregroundColor(.blue).opacity(1.6)
                                .padding()
                        }
                        Spacer()
                        HStack{
                            Text("QUICK SEARCH")
                                .font(.custom("Futura Bold", size: 20))
                                .foregroundColor(.blue).opacity(1.6)
                                .padding()
                            Spacer()
                        }
                        ScrollView(Axis.Set.horizontal,showsIndicators: false) {
                            HStack{
                                NavigationLink(destination: GinView()) {
                                    ginButton()
                                        .padding(.leading, 1.0)
                                }
                                NavigationLink(destination: VodkaView()) {
                                    vodkaButton()
                                        .padding(.leading, 1.0)
                                }
                                NavigationLink(destination: RumView()) {
                                    rumButton()
                                        .padding(.leading, 1.0)
                                }
                            }
                        }
                        Spacer()
                        HStack{
                            Text("MOST POPULAR")
                                .font(.custom("Futura Bold", size: 20))
                                .foregroundColor(.blue).opacity(1.6)
                                .padding()
                            Spacer()
                            
                        }
                        
                        ScrollView(Axis.Set.horizontal,showsIndicators: true) {
                            
                            HStack{
                                
                                ForEach(dataController.popularInfo?.drinks ?? [], id: \.self) { popularDrink in
                                    NavigationLink {
                                        CocktailView(drinkId: popularDrink.idDrink ?? "11007")
                                        
                                        
                                        
                                    }label: {
                                        
                                        ZStack{
                                            let test = popularDrink.strDrinkThumb ?? "drink thumb"
                                            let url1 = URL(string: test)
                                            AsyncImage(
                                                url: url1,
                                                content: { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                                        .frame(maxWidth: 150, maxHeight: 150)
                                                     //   .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                                },
                                                placeholder: {
                                                    ProgressView()
                                                }
                                            )
                                            
                                            ZStack{
                                                Text(popularDrink.strDrink ?? "11007")
                                                    .font(.custom("Futura Bold", size: 22))
                                                    .foregroundColor(.white).opacity(1.6)
                                                    .frame(width: 150, height: 60, alignment: .center)
                                                    .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                                
                                                //    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
                                            }
                                        }
                                        
                                    }
                                    
                                }
                            }
                            
                        }
                        
                        VStack{
                            HStack{
                                Text("LATEST")
                                    .font(.custom("Futura Bold", size: 20))
                                    .foregroundColor(.blue).opacity(1.6)
                                    .padding()
                                Spacer()
                                
                            }
                            
                            
                            
                            ScrollView(Axis.Set.horizontal,showsIndicators: true) {
                                
                                HStack{
                                    
                                    ForEach(dataController1.latestInfo?.drinks ?? [], id: \.self) { latestDrink in
                                        NavigationLink {
                                            CocktailView(drinkId: latestDrink.idDrink ?? "11007")
                                            
                                            
                                            
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
                                                          //  .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
                                                    },
                                                    placeholder: {
                                                        ProgressView()
                                                    }
                                                )
                                                
                                                VStack{
                                                    Text(latestDrink.strDrink ?? "11007")
                                                        .font(.custom("Futura Bold", size: 20))
                                                        .foregroundColor(.white).opacity(1.6)
                                                        .frame(width: 150, height: 60,alignment: .center)
                                                        .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                                      //  .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
                                                }
                                            }
                                            
                                        }
                                        
                                    }
                                }
                                
                            }
                            
                            
                        }
                        NavigationLink(destination: RandomView()) {
                            TestView5()
                                .padding()
                        }
                        
                       
                    }
                   
                }
                
                .navigationBarHidden(true)
                .toolbar {
                    
                }
                
              
                }
        }
        
        .onAppear {
            dataController.fetch()
            dataController1.fetch()
        }
        
    }
    
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(drinkId: practiceDrinkID)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}









