//
//  ShoppingCardView.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import SwiftUI

struct ShoppingCardView: View {
    @ObservedObject var shoppingCardViewModel: ShoppinCardViewModel
    @EnvironmentObject var userDataViewModel : UserDataViewModel
    var body: some View {
        VStack{
            Text("\(userDataViewModel.userName) Einkäufe:")
            List(shoppingCardViewModel.selectedProducts) { product in
                HStack{
                    Text("\(product.name) - \(product.price) Euro")
                    Button("Remove"){
                        shoppingCardViewModel.removeFromCart(product)
                    }.foregroundColor(Color.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                }
            }
        }
        
    }
}

#Preview {
    ShoppingCardView(shoppingCardViewModel: ShoppinCardViewModel())
        .environmentObject(UserDataViewModel())
}
