//
//  SecondContentView.swift
//  Black Jack vs Computer - v1
//
//  Created by Lennart Buhl on 9/10/20.
//  Copyright © 2020 Lennart Buhl. All rights reserved.
//

import SwiftUI

struct SecondContentView: View {
    
    @ObservedObject private var viewModel = SecondContentViewViewModel()
    
    var body: some View {
        VStack {
            
            //MARK: - The Computer's Cards:
           // HStack {
            Text("The Computer's Cards:").font(Font.custom("Times", size: 27))
                //Text("\(viewModel.computerPoints)").font(Font.custom("Times", size: 27))
           // }
            HStack {
                //MARK: - Top Left Card
                CardBluePrint()
                
                
                //MARK: - Top Right Card
                CardBluePrint()
            }
            
            
            // MARK: - Your Cards:
            
            Text("Your Cards:").font(Font.custom("Times", size: 27))
            
            HStack {
                //MARK: - Bottom Left Card
                CardBluePrint()
                
                
                //MARK: - Bottom Right Card
                ButtonView()
                
            }
            
        }.padding()
            .onAppear() {
                self.viewModel.playerButtonPressed = false
        }
    }
}

struct ThirdContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}
