//
//  LogOutButtonView.swift
//  StateAnaDataFlow
//
//  Created by Александр Полочанин on 15.06.23.
//

import SwiftUI

struct LogOutButtonView: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        }
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView(action: {})
    }
}
