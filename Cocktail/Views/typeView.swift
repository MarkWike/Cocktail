//
//  typeView.swift
//  Cocktail
//
//  Created by Mark Wike on 31/05/2022.
//
import SwiftUI

struct TypeView: View {
    @State var selectedIndex = 0
    let GradientColors = Gradient(colors: [Color.blue.opacity(0.5), Color.white])
    var typeID: String
    var typeName: String
    @ObservedObject var dataController = TypeDataController()
    var body: some View {
        ZStack{
       //     NavigationView {
            LinearGradient(gradient: GradientColors, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
                List {
                    
                    ForEach(dataController.typeInfo?.drinks ?? [], id: \.self) { types in
                        NavigationLink {
                            CocktailView(drinkId: types.idDrink ?? "11007")
                        } label: {
                            VStack{
                                HStack{
                                    let test = types.strDrinkThumb ?? "drink thumb"
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
                                    Text(types.strDrink ?? "Drink")
                                        .font(.custom("Futura Bold", size: 15))
                                        .foregroundColor(.blue).opacity(0.9)
                                        .frame(width: 200, alignment: .leading)
                                }
                            }
                        }
                //    }
                }
            }
            .navigationTitle("\(typeName)")
        }
        .onAppear {
            dataController.fetch(TypeID: typeID)
        }
    }
}




struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView(typeID: practiceTypeID, typeName: practiceTypeID)
    }
}
