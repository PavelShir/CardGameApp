//
//  ClubView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct ClubView: View {
    var body: some View {
        
        
        ZStack {
            Rectangle().stroke(Color.gray, lineWidth: 5)
                .frame(width: 200, height: 300)
                .background(.white)
                .rotationEffect(.degrees(Double(20)))
            Image(systemName: "suit.club.fill")
                .resizable()
                .frame(width: 50, height: 70)
                .foregroundColor(.black)
                .rotationEffect(.degrees(Double(20)))
            VStack {
                Image(systemName: "suit.club.fill")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(Double(20)))
                    .position(x: 165, y: 240)
                Image(systemName: "suit.club.fill")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(Double(20)))
                    .position(x: 225, y: 140)
            }
      
        }
        
    }
}

struct ClubView_Previews: PreviewProvider {
    static var previews: some View {
        ClubView()
    }
}
