//
//  SwiftUIView.swift
//  Cocktail
//
//  Created by Mark Wike on 24/05/2022.
//

import SwiftUI

struct SwiftUIView1: View {
    init() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .selected)
        UIFont.systemFont(ofSize: 20, weight: .bold)
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View {
        ZStack{
            TabView {
                    MainMenu().tabItem {
                    VStack{
                        Image(systemName: "book")
                        Text("App Drinks")
                    }
                }
                UserDrinkMenu().tabItem {
                    VStack{
                        Image(systemName: "list.dash")
                        Text("Your Drinks")
                    }
                }
                SearchMenuView().tabItem {
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
            }.accentColor(.indigo)
        }
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}

struct SView: View {
    var body: some View {
        VStack{
            Text("Test")
        }
    }
}
