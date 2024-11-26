//
//  SettingsView.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userDataViewModel : UserDataViewModel
    var body: some View {
        VStack{
            Text("Bitte hier die Einstellungen eintragen")
            TextField("Name", text: $userDataViewModel.userName)
        }
        .padding()
    }
}

#Preview {
    SettingsView()
        .environmentObject(UserDataViewModel())
}
