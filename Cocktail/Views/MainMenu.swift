//
//  MainMenu.swift
//  Cocktail
//
//  Created by Mark Wike on 07/04/2022.
//

import SwiftUI

struct MainMenu: View {
    @StateObject var viewModel = MainMenuViewModel()
    @ObservedObject var dataController = PopularDataController()
    @ObservedObject var dataController1 = LatestDataController()
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: viewModel.GradientColors, startPoint: .bottomLeading, endPoint: .center)
                    .ignoresSafeArea()
                    .ignoresSafeArea(.container, edges: [.bottom, .horizontal])
                ScrollView(Axis.Set.vertical,showsIndicators: false) {
                    VStack{
                        Spacer()
                        MainMenuQuickLookupView()
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
                            MostPopularView()

                            ScrollView(Axis.Set.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(dataController.popularInfo?.drinks ?? [], id: \.self) { popularDrink in
                                        NavigationLink {
                                            CocktailView(drinkId: popularDrink.idDrink ?? "11007")
                                        }label: {
                                            PopularRowView(drinkImage: popularDrink.strDrinkThumb ?? "drink thumb", drinkName: popularDrink.strDrink ?? "11007")
                                        }
                                    }
                                }
                            }.padding(.leading)
                            VStack{
                                LatestAdditionsTitleView()
                                ScrollView(Axis.Set.horizontal,showsIndicators: false) {
                                    HStack{
                                        ForEach(dataController1.latestInfo?.drinks ?? [], id: \.self) { latestDrink in
                                            NavigationLink {
                                                CocktailView(drinkId: latestDrink.idDrink ?? "11007")
                                            }label: {
                                                LatestRowView(drinkImage: latestDrink.strDrinkThumb ?? "drink thumb", drinkName: latestDrink.strDrink ?? "11007")
                                            }
                                        }
                                    }.padding(.horizontal)
                                }
                            }
                            RandomDrinkTitleView()
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
        MainMenu()
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






