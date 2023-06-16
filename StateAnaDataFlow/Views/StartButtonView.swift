//
//  StartButtonView.swift
//  StateAnaDataFlow
//
//  Created by Александр Полочанин on 15.06.23.
//

import SwiftUI

struct StartButtonView: View {
    
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        VStack {
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            Button(action: timer.startTimer) {
                Text(timer.buttonTitle)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(.red)
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 4)
            }
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimeCounter())
    }
}
