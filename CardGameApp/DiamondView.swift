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
                .background(.white)
            VStack {
                HStack {
                    Image(systemName: "diamond.fill")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(.red)
                    Spacer()
                }
                Spacer()
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .foregroundColor(.red)
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "diamond.fill")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(.red)
                }
            }
            .frame(width: 180, height: 280)
        }
        .rotationEffect(.degrees(Double(-20)))
    }
        
    struct DiamondView_Previews: PreviewProvider {
        static var previews: some View {
            DiamondView()
        }
    }

}
