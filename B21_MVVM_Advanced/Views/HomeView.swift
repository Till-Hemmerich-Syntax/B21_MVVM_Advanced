//
//  HomeView.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var userDataViewModel = UserDataViewModel()
    @StateObject var shoppingCardViewModel = ShoppinCardViewModel()
    var body: some View {
        TabView{
            Tab("Shopping",systemImage: "cart"){
                ShoppingView(shoppingCardViewModel: shoppingCardViewModel)
            }
            .badge(shoppingCardViewModel.selectedProducts.count)
            Tab("Account",systemImage: "person"){
                SettingsView()
            }
        }
        .environmentObject(userDataViewModel)
    }
}

#Preview {
    HomeView()
}
