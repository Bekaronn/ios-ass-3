//
//  SectionTitle.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct SectionTitle: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Spacer()
        }
        .padding(.bottom, 5)
    }
}
