//
//  DiamondView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct DiamondView: View {
    var body: some View {

            ZStack {
                Rectangle().stroke(Color.gray, lineWidth: 5)
                    .frame(width: 200, height: 300)
                    .foregroundColor(.white)
                .rotationEffect(.degrees(Double(-20)))
                Image(systemName: "suit.diamond.fill")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .foregroundColor(.red)
                    .rotationEffect(.degrees(Double(-20)))
                VStack {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(.red)
                        .rotationEffect(.degrees(Double(-20)))
                        .position(x: 80, y: 290)
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(.red)
                        .rotationEffect(.degrees(Double(-20)))
                        .position(x: 310, y: 80)
                }
          
            }
        }
        
    struct DiamondView_Previews: PreviewProvider {
        static var previews: some View {
            DiamondView()
        }
    }

}
