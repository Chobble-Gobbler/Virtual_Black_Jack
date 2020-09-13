//
//  ContentView.swift
//  Black Jack vs Computer - v1
//
//  Created by Lennart Buhl on 9/10/20.
//  Copyright © 2020 Lennart Buhl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30){
                Text("Welcome to Virtual Black Jack").font(Font.custom( "Times", size: 50))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: SecondContentView()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.black)
                            .frame(width: 280, height: 65)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 10, y: 10)
                        
                        
                        Text("Start Game").font(Font.custom("Times", size: 35))
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
