//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
   
    @Published var user: User
   
    lazy var name = user.name
    lazy var isLogged = user.isLogged
    
    init() {
        user = StorageManager().getUser()
    }
}
