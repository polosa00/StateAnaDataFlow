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
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)

          
            Spacer()
            
            StartButtonView(timer: timer)
            
            Spacer()
            
            LogOutButtonView(action: logOut)
                .padding(.bottom, 20)
            
        }
        .onAppear{
           

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
        storageManager.deleteUser()
        user.isLogged = false
      
    }
}

