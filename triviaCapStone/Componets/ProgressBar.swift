//
//  ProgressBar.swift
//  triviaCapStone
//
//  Created by Alex Quintero on 12/28/22.
//

import SwiftUI

struct ProgressBar: View {
    var Progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue:1.0, saturation: 0.0, brightness: 0.56, opacity: 0.33))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: Progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(Progress: 50)
    }
}
