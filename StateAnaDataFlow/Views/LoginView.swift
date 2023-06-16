//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    
    @EnvironmentObject private var user: UserSettings
    @EnvironmentObject private var storageManager: StorageManager
   
    private let validationNumber = 2
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .padding(.trailing, -60)
                    
                Text("\(name.count)")
                    .padding(.trailing, 30)
                    .foregroundColor(
                        verification() ? .green : .red
                    )
            }
            .multilineTextAlignment(.center)
            
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!verification())
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension LoginView {
    
    private func login() {
        user.name = name
        user.isLogged.toggle()
        storageManager.createUser(name: name)
    }
    
    private func verification() -> Bool {
        name.count > validationNumber
    }
}
