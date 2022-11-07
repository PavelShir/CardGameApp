//
//  ContentView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var cardIsTaken = false
    
    private let buttonLabel = [
        "Начать игру", "Взять карту", "Вторую", "Третью", "Четвертую", "Скинуть"
    ]
    @State private var index = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            ZStack(alignment: .center) {
               
                switch index {
                case 0, 1:
                    Label("Игрок 1", systemImage: "person.fill")
                        .frame(width: 250, height: 100)
                        .font(.system(size: 26))
                case 2:
                    DiamondView()
                        .transition(.move(edge: .top))
                case 3:
                    DiamondView()
                    SpaidView()
                        .transition(.move(edge: .top))
                case 4:
                    DiamondView()
                    SpaidView()
                    ClubView()
                        .transition(.move(edge: .top))
                default:
                    DiamondView()
                    SpaidView()
                    ClubView()
                    HeartView()
                        .transition(.move(edge: .top))
                }
            }
            Spacer()
            
            Button(
                action: {
                    buttonAction()
                    if index < 5 {
                        index += 1
                    } else {
                        index = 0
                    }
                }, label: {
                    Text(buttonLabel[index])
                })
            .font(.system(size: 26))
            Spacer()
        }
    }
    
    private func buttonAction() {
        withAnimation {
            cardIsTaken.toggle()
        }
    }
    
    private func takeCard(view: UIView) {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
