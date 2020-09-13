//
//  CardBluePrint.swift
//  Black Jack vs Computer - v1
//
//  Created by Lennart Buhl on 9/12/20.
//  Copyright © 2020 Lennart Buhl. All rights reserved.
//

import SwiftUI

struct CardBluePrint: View {
    
    @ObservedObject private var viewModel = SecondContentViewViewModel()
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.offWhite)
                .frame(width: 140, height:260)
            
            VStack {
                
                HStack {
                    
                    // Text Display
                    
                    
                    Text("\(viewModel.cardNames)").font(Font.custom("Times", size: 34))
                        .bold()
                        .foregroundColor(viewModel.getEqualColor())
                    
                    
                    Spacer()
                    
                }
                Spacer(minLength: 60)
                
                Image(systemName: viewModel.getSymbol()).font(.system(size: 70))
                    .foregroundColor(viewModel.getEqualColor())
                
                Spacer(minLength: 60)
                
                HStack {
                    
                    Spacer()
                    
                    
                    // Number Display
                    
                    Text("\(viewModel.getValueOfCards())").font(Font.custom("Times", size: 40))
                        .bold()
                        .foregroundColor(viewModel.getEqualColor())
                }
                
            }.padding(38)
        }
    }
}

struct CardBluePrint_Previews: PreviewProvider {
    static var previews: some View {
        CardBluePrint()
    }
}
