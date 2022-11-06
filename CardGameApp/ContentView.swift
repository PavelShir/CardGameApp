//
//  ContentView.swift
//  CardGameApp
//
//  Created by 19543442 on 06.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            DiamondView()
            SpaidView()
            ClubView()
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
