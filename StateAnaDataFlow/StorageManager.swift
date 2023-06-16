//
//  StorageManager.swift
//  StateAnaDataFlow
//
//  Created by Александр Полочанин on 16.06.23.
//

import SwiftUI


class StorageManager: ObservableObject {
    @AppStorage("userName") var userName = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    func createUser(name: String) {
        userName = name
        isLoggedIn = true
    }
    
    func getUser(user: User) -> User {
        User(name: userName, isLogged: isLoggedIn)
    }
    
    func deleteUser() {
        userName = ""
        isLoggedIn = false
    }
}
