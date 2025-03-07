//
//  HeroTitleView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct HeroTitleView: View {
    let name: String
    
    var body: some View {
        Text(name)
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.primary)
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
    }
}
