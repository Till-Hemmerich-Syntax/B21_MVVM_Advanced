//
//  Product.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name : String
    var price : Int
}
