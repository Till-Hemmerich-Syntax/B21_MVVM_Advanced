//
//  UserDataViewModel.swift
//  B21_MVVM_Advanced
//
//  Created by Till Hemmerich on 26.11.24.
//

import Foundation


@MainActor
class UserDataViewModel: ObservableObject{
    @Published var userName: String = ""
}
