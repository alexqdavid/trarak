//
//  SwiftUIView.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 1/4/23.
//
import SwiftUI
import ConfettiSwiftUI

struct ContentVieww: View {
    @State private var counter = 0
    
    var body: some View {
    Button(action: {
            counter += 1
           
    }) {
        
        Text("🎃")
        
            .font(.system(size: 50))
    }
        .confettiCannon (counter: $counter, radius: 500.0)
   }
}

//struct ContentVieww_Previews: PreviewProvider {
//
//        static var reviews: some View {
//
//            ContentView()
//        }
//    }
