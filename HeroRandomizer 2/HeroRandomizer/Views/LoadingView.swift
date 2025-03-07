//
//  LoadingView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .scaleEffect(2)
            Text("Finding your hero...")
                .font(.headline)
                .padding(.top, 20)
        }
    }
}
