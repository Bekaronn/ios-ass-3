//
//  ErrorView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct ErrorView: View {
    let error: String
    let retry: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "exclamationmark.triangle")
                .font(.system(size: 50))
            
            Text("Error:")
                .font(.title2)
            
            Text(error)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Button(action: retry) {
                Text("Try Again")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}
