//
//  ContentView.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var trivialManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                   VStack(spacing: 20) {
                        Text("Trarak Game")
                            .lilacTitle()
                        
                        Text("Are you Ready?")
                            .foregroundColor(Color("AccentColor"))
                    }
                NavigationLink {
                    TriviaView()
                        .environmentObject(trivialManager)
                } label: {
                    PrimaryButton(text: "Start")
                }
                    
                    
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            .background(Color(red:1, green: 0.93, blue: 0.85))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
