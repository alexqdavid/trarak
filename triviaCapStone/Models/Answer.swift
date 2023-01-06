//
//  Answer.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
