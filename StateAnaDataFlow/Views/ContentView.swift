//
//  ContentView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    
    @EnvironmentObject private var user: UserSettings
    @EnvironmentObject private var storageManager: StorageManager

    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            StartButtonView(timer: timer)
                .padding(.bottom, 140)
            LogOutButtonView(action: logOut)
                .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}

extension ContentView {
    private func logOut() {
        user.isLogged = false
        storageManager.deleteUser()
    }
}

