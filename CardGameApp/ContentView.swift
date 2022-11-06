//
//  ContentView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var cardIsTaken = false
    private let firstCard = "Взять карту"
    private let secondCard = "Взять вторую"
    private let theardCard = "Взять третью"
    private let fourthCard = "Взять четвертую"
    
    var body: some View {
        
        VStack {
            Button(
                action: {
                    buttonAction()
                }, label: {
                    Text(firstCard)
                })
            .font(.system(size: 26))
            Spacer()
            
            ZStack(alignment: .center) {
                if cardIsTaken {
                    
                    DiamondView()
                        .transition(.move(edge: .bottom))
                }
                
                SpaidView()
                    .offset(x: cardIsTaken ? 0 : -UIScreen.main.bounds.height)
                ClubView()
                HeartView()
                
            }
            Spacer()
        }
    }
    
    private func buttonAction() {
        withAnimation {
            cardIsTaken.toggle()
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
