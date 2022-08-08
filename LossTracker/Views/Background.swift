//
//  Background.swift
//  LossTracker
//
//  Created by Paul Kirnoz on 24.07.2022.
//

import SwiftUI

struct Background: View {
    @State private var animateGradient = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .gray, .yellow],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .opacity(0.5)
            .edgesIgnoringSafeArea(.all)
        }
        .preferredColorScheme(.light)
    }
}


struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
