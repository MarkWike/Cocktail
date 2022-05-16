//
//  testviews.swift
//  Cocktail
//
//  Created by Mark Wike on 17/04/2022.
//

import SwiftUI

struct TestView1: View {
    var body: some View {
        ZStack{
            Text("Cocktails")
                .font(.custom("Futura Bold", size: 20))
                .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 20)
                .frame(width: 200, height: 150.0)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct TestView2: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
                .frame(width: 200, height: 150)
            Text("Search by ingredients")
        }
    }
}
struct TestView3: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: 200, height: 150)
            Text("Browse by name")
        }
    }
}
struct TestView4: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.orange)
                .frame(width: 200, height: 150)
            Text("popular cocktails")
        }
    }
}

struct TestView5: View {
    var body: some View {
        ZStack {
            Image("luckyButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("Lucky Dip")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}

struct TestView6: View {
    var body: some View {
        ZStack {
            Image("luckyButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("alchohol")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}


struct TestView7: View {
    var body: some View {
        ZStack {
            Image("non alchohol")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("Latest cocktails")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}

struct TestView8: View {
    var body: some View {
        ZStack {
            Image("luckyButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("Ordinary drink")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}

struct TestView9: View {
    var body: some View {
        ZStack {
            Image("luckyButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("filter by glass")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}

struct TestView10: View {
    var body: some View {
        ZStack {
            Image("luckyButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .frame(width: .infinity, height: 250)
                .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Text("Latest cocktails")
                .font(.custom("Futura Bold", size: 30))
                .foregroundColor(.white).opacity(1.6)
        }
    }
}







struct testviews_Previews: PreviewProvider {
    static var previews: some View {
        TestView1()
    }
}
