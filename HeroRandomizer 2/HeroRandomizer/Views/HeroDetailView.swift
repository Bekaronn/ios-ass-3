//
//  HeroDetailView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct HeroDetailView: View {
    let hero: Hero
    let onRetry: () -> Void
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeroImageView(url: hero.imageUrl)
                
                VStack(spacing: 15) {
                    HeroTitleView(name: hero.name)
                    
                    BiographySection(hero: hero)
                    PowerstatsSection(hero: hero)
                    AppearanceSection(hero: hero)
                }
                .padding(.horizontal)
                
                RetryButton(action: onRetry)
            }
            .padding(.vertical)
        }
    }
}
