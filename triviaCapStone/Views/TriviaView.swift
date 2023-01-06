//
//  TriviaView.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import SwiftUI
import ConfettiSwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
  //  @State private var counter = 0
    var body: some View {
        if triviaManager.reachEnd {
            VStack(spacing: 20) {
                Text("Trarak Game")
                    .lilacTitle()
                
                Text("Congratulations")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                Button(action: {
                 
                    Task.init {
                      //  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            await triviaManager.fetchTrivia()
                     //   }
                    }
                
                }) {
                    PrimaryButton(text: "Play Again?")
                }
                    //.confettiCannon (counter: $counter, radius: 500.0)
               }
               
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red:0.98, green: 0.93, blue: 0.85))
            .navigationBarHidden(true)
            
            } else {
            QuestionView()
                .environmentObject(triviaManager)
      }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
