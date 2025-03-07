//
//  EmptyStateView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct EmptyStateView: View {
    let fetchNew: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.3")
                .font(.system(size: 60))
            
            Text("No Hero Selected")
                .font(.title)
            
            Button(action: fetchNew) {
                Text("Find Hero")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}
