//
//  ButtonView.swift
//  Black Jack vs Computer - v1
//
//  Created by Lennart Buhl on 9/12/20.
//  Copyright © 2020 Lennart Buhl. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    
    @ObservedObject private var viewModel = SecondContentViewViewModel()
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.viewModel.playerButtonPressed.toggle()
            }
        }) {
            if viewModel.playerButtonPressed == false {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black)
                        .frame(width: 193, height: 80)
                        .shadow(color: Color.black.opacity(0.5), radius: 10, x: 10, y: 10)
                    
                    
                    Text("Extra Card").font(Font.custom("Times", size: 35))
                        .bold()
                        .foregroundColor(.white)
                }
            } else {
                
                CardBluePrint()
                
            }
        }
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
