//
//  Extensions.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
