//
//  ShoppinCardViewModel.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import Foundation

@MainActor
class ShoppinCardViewModel: ObservableObject {
    @Published var storeProducts = [
        Product(name: "Schuhe", price: 50),
        Product(name: "Hut", price: 10),
        Product(name: "Tasche", price: 20),
        Product(name: "Handy", price: 600)
    ]
    
    @Published var selectedProducts: [Product] = []
    
    func addToCart(_ product: Product) {
        selectedProducts.append(product)
    }
    func removeFromCart(_ product: Product) {
        selectedProducts.removeAll(where: { $0.id == product.id })
    }
    
}
