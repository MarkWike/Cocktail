//
//  ListLineView.swift
//  Cocktail
//
//  Created by Mark Wike on 30/06/2022.
//

import SwiftUI

struct ListLineView: View {
    @StateObject var viewModel = vodkaViewViewModel()
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(gradient: viewModel.GradientColors2, startPoint: .leading, endPoint: .trailing))
            .frame(width: 250, height: 3, alignment: .trailing)
    }
}

struct ListLineView_Previews: PreviewProvider {
    static var previews: some View {
        ListLineView()
    }
}
