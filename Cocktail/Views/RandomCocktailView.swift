import SwiftUI

struct RandomView: View {
    @StateObject var randomCocktailDataController = RandomCocktailDataController()
    let GradientColors = Gradient(colors: [ Color.white, Color("orange").opacity(0.7)])
    let GradientColors1 = Gradient(colors: [Color.indigo, Color.indigo])
    var body: some View {
        ZStack{
            LinearGradient(gradient: GradientColors, startPoint: .bottomLeading, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                ForEach(randomCocktailDataController.randomCocktailInfo?.drinks ?? [], id: \.self) { drink in
                    VStack{
                        Text(drink.strDrink ?? "Drink")
                            .font(.custom("Futura Bold", size: 30))
                            .frame(width: 300)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black.opacity(0.7), radius: 10, x: 5, y: 5)
                        let test = drink.strDrinkThumb ?? "drink thumb"
                        let url1 = URL(string: test)
                        AsyncImage(
                            url: url1,
                            content: { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    .frame(maxWidth: 150, maxHeight: 150)
                                    .shadow(color: .indigo.opacity(0.9), radius: 10, x: 5, y: 5)
                            },
                            placeholder: {
                                ProgressView()
                            }
                        )
                    }
                    .onTapGesture {
                        randomCocktailDataController.fetch()
                    }
                    
                    Text(drink.strAlcoholic ?? "Alcoholic")
                        .font(.custom("Futura", size: 20))
                        .frame(width: 300, alignment: .center)
                        .foregroundColor(.white)
                    
                    VStack{
                        let GlassText = "Best served in a \(drink.strGlass?.lowercased() ?? "glass")"
                        Text(GlassText)
                            .font(.custom("Futura", size: 20))
                            .frame(width: 300, alignment: .center)
                            .foregroundColor(.white)
                    }
                    HStack {
                        ScrollView(Axis.Set.vertical,showsIndicators: false) {
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                    VStack {
                                        Text("Instructions")
                                            .font(.custom("Futura", size: 20))
                                            .frame(width: 300, alignment: .center)
                                            .foregroundColor(.white)
                                        Text(drink.strInstructions ?? "instructions")
                                            .font(.custom("Futura", size: 15))
                                            .frame(width: 300, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal)
                                            .padding(.bottom)
                                    }
                                }
                                .padding()
                                ZStack{
                                    VStack(spacing: 20){
                                        Text("Ingredients")
                                            .font(.custom("Futura", size: 20))
                                            .shadow(color: .black.opacity(5.1), radius: 10, x: 5, y: 5)
                                            .frame(width: 300, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(20)
                                        if drink.strMeasure1 == nil {
                                            
                                        }else{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 15.0)
                                                    .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                    .frame(height: 40.0)
                                                    .padding(.horizontal)
                                                Text("\(drink.strMeasure1 ?? "") \(drink.strIngredient1 ?? "")")
                                                    .font(.custom("Futura", size: 15))
                                                    .foregroundColor(.white).opacity(1.6)
                                            }
                                        }
                                        if drink.strMeasure2 == nil {
                                            
                                        }else{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 15.0)
                                                    .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                    .frame(height: 40.0)
                                                    .padding(.horizontal)
                                                Text("\(drink.strMeasure2 ?? "") \(drink.strIngredient2 ?? "")")
                                                    .font(.custom("Futura", size: 15))
                                                    .foregroundColor(.white).opacity(1.6)
                                            }
                                        }
                                        if drink.strMeasure3 == nil {
                                            
                                        }else{
                                            ZStack{
                                                Spacer()
                                                RoundedRectangle(cornerRadius: 15.0)
                                                    .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                    .frame(height: 40.0)
                                                    .padding(.horizontal)
                                                HStack{
                                                    Text("\(drink.strMeasure3 ?? "") \(drink.strIngredient3 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                }
                                                Spacer()
                                            }
                                            if drink.strMeasure4 == nil {
                                                
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drink.strMeasure4 ?? "") \(drink.strIngredient4 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                    Spacer()
                                                }
                                            }
                                            if drink.strMeasure5 == nil {
                                                
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drink.strMeasure5 ?? "") \(drink.strIngredient5 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                    Spacer()
                                                }
                                            }
                                            if drink.strMeasure6 == nil {
                                                
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drink.strMeasure6 ?? "") \(drink.strIngredient6 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                    Spacer()
                                                }
                                            }
                                            if drink.strMeasure7 == nil {
                                                
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drink.strMeasure7 ?? "") \(drink.strIngredient7 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                    Spacer()
                                                }
                                            }
                                            if drink.strMeasure8 == nil {
                                                
                                            }else{
                                                ZStack{
                                                    Spacer()
                                                    RoundedRectangle(cornerRadius: 15.0)
                                                        .fill(LinearGradient(gradient: GradientColors1, startPoint: .top, endPoint: .bottom))
                                                        .frame(height: 40.0)
                                                        .padding(.horizontal)
                                                    Text("\(drink.strMeasure8 ?? "") \(drink.strIngredient8 ?? "")")
                                                        .font(.custom("Futura", size: 15))
                                                        .foregroundColor(.white).opacity(1.6)
                                                    Spacer()
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }.frame(height: UIScreen.frameSizeCocktailList)
                    }
                }
            }
            Spacer()
        }
        .onAppear {
            randomCocktailDataController.fetch()
        }
    }
}



struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}







