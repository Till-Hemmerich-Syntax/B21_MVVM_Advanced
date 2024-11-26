//
//  ContentView.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import SwiftUI

struct ShoppingView: View {
    @State var isPresented: Bool = false
    @ObservedObject var shoppingCardViewModel : ShoppinCardViewModel
    var body: some View {
        NavigationStack{
            VStack {
                List(shoppingCardViewModel.storeProducts) { product in
                    HStack{
                        HStack{
                            Text(product.name)
                                .font(.headline)
                            Spacer()
                            Text("\(product.price) €")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button("ADD"){
                            shoppingCardViewModel.addToCart(product)
                        }
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                    }
                }
                Button("Show Card"){
                    isPresented = true
                }
            }
            .padding()
            .sheet(isPresented: $isPresented) {
                ShoppingCardView(shoppingCardViewModel: shoppingCardViewModel)
            }
            .toolbar{
                ZStack{
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 24,height: 24)
                    if(shoppingCardViewModel.selectedProducts.count > 0){
                        Text("\(shoppingCardViewModel.selectedProducts.count)")
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(x:10,y:-10)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ShoppingView(shoppingCardViewModel: ShoppinCardViewModel())
}
