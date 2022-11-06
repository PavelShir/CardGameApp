//
//  SpaidView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct SpaidView: View {
    var body: some View {
        
        ZStack {
            Rectangle().stroke(Color.gray, lineWidth: 5)
                .frame(width: 200, height: 300)
                .background(.white)
            Image(systemName: "suit.spade.fill")
                .resizable()
                .frame(width: 50, height: 70)
                .foregroundColor(.black)
            VStack {
                Image(systemName: "suit.spade.fill")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundColor(.black)
                    .position(x: 115, y: 260)
                Image(systemName: "suit.spade.fill")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundColor(.black)
                    .position(x: 275, y: 120)
            }
      
        }
        
    }
}

struct SpaidView_Previews: PreviewProvider {
    static var previews: some View {
        SpaidView()
    }
}
