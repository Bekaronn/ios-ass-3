//
//  RetryButton.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct RetryButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Retry")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}
