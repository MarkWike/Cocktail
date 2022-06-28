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
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    var drinkId: String
    var typeID: String
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                    .ignoresSafeArea()
                    .ignoresSafeArea(.container, edges: [.bottom, .horizontal])
                ScrollView(Axis.Set.vertical,showsIndicators: false) {
                    VStack{
                        Spacer()
                        HStack{
                            Text("QUICK LOOKUP")
                                .font(.custom("Futura Bold", size: 20))
                                .foregroundColor(.white)
                                .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                                .padding(.top)
                                .padding(.horizontal)
                            Spacer()
                        }
                        VStack{
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
                                }.padding(.horizontal)
                            }
                            Spacer()
                            HStack{
                                Text("MOST POPULAR")
                                    .font(.custom("Futura Bold", size: 20))
                                    .foregroundColor(.white)
                                    .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Spacer()
                            }
                            ScrollView(Axis.Set.horizontal,showsIndicators: false) {
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
                                                            .frame(maxWidth: 100, maxHeight: 100)
                                                            .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                                                    },
                                                    placeholder: {
                                                        ProgressView()
                                                    }
                                                )
                                                ZStack{
                                                    Text(popularDrink.strDrink ?? "11007")
                                                        .font(.custom("Futura Bold", size: 17))
                                                        .foregroundColor(.white).opacity(1.6)
                                                        .frame(width: 100, height: 100, alignment: .center)
                                                        .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                                }
                                            }
                                        }
                                    }
                                }
                            }.padding(.leading)
                            VStack{
                                HStack{
                                    Text("LATEST ADDITIONS")
                                        .font(.custom("Futura Bold", size: 20))
                                        .foregroundColor(.white)
                                        .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                                        .padding(.horizontal)
                                        .padding(.top)
                                    Spacer()
                                }
                                ScrollView(Axis.Set.horizontal,showsIndicators: false) {
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
                                                                .frame(maxWidth: 120, maxHeight: 100)
                                                                .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                                                        },
                                                        placeholder: {
                                                            ProgressView()
                                                        }
                                                    )
                                                    VStack{
                                                        Text(latestDrink.strDrink ?? "11007")
                                                            .font(.custom("Futura Bold", size: 15))
                                                            .foregroundColor(.white).opacity(1.6)
                                                            .frame(width: 100, height: 60,alignment: .center)
                                                            .shadow(color: .black.opacity(0.9), radius: 10, x: 5, y: 5)
                                                    }
                                                }
                                            }
                                        }
                                    }.padding(.horizontal)
                                }
                            }
                            HStack{
                                Text("RANDOM DRINKS")
                                    .font(.custom("Futura Bold", size: 20))
                                    .foregroundColor(.white)
                                    .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Spacer()
                            }
                            ScrollView(Axis.Set.horizontal,showsIndicators: false) {
                                HStack{
                                    NavigationLink(destination: RandomView()) {
                                        LuckDipButtonView()
                                    }
                                    NavigationLink(destination: RandomlListView()) {
                                        RandomListButtonView()
                                    }
                                }.padding(.horizontal)
                            }
                        }
                        .navigationBarHidden(true)
                    }
                }.frame(height: UIScreen.frameSizeMain)
            }
            .onAppear {
                dataController.fetch()
                dataController1.fetch()
            }
        }
        .navigationBarBackButtonHidden(true) 
    }
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(drinkId: practiceDrinkID, typeID: practiceTypeID)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}


extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    static let frameSizeList = UIScreen.main.bounds.size.height / 10 * 7
    static let frameSizeMain = UIScreen.main.bounds.size.height / 10 * 8.4
    static let frameSizeCocktailList = UIScreen.main.bounds.size.height / 10 * 3.5
    static let frameSizeSearchList = UIScreen.main.bounds.size.height / 10 * 6
}






