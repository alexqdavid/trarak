//
//  QuestionView.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import SwiftUI
import ConfettiSwiftUI

struct QuestionView: View { 
    @EnvironmentObject var triviaManager: TriviaManager
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trarak Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(Progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
                
            }
            
            Button {
                counter += 1
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color (hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .if (triviaManager.correctAnswerSelected) { view in
                // We only apply this background color if shouldApplyBackground is true
            //    view.background(Color.red)
                    view.confettiCannon(counter: $counter)
            }
        
    

           
//            .disabled(!triviaManager.answerSelected)
          //    .confettiCannon(counter: $counter)
            //Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red:1, green: 0.93, blue: 0.85))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
