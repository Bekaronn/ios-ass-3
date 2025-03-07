//
//  BiographySection.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct BiographySection: View {
    let hero: Hero
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            SectionTitle("Biography")
            
            InfoRow(title: "Full Name", value: hero.biography.fullName)
            InfoRow(title: "Alter Egos", value: hero.biography.alterEgos)
            InfoRow(title: "Birth Place", value: hero.biography.placeOfBirth)
            InfoRow(title: "Alignment", value: hero.biography.alignment)
                .foregroundColor(hero.biography.alignment == "good" ? .green : .red)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.secondarySystemBackground))
        )
    }
}
