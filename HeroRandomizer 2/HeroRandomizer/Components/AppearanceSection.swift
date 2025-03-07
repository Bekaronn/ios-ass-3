//
//  AppearanceSection.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct AppearanceSection: View {
    let hero: Hero
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            SectionTitle("Appearance")
            
            InfoRow(title: "Gender", value: hero.appearance.gender)
            InfoRow(title: "Race", value: hero.appearance.race ?? "Unknown")
            InfoRow(title: "Height", value: hero.appearance.height.joined(separator: " / "))
            InfoRow(title: "Weight", value: hero.appearance.weight.joined(separator: " / "))
            InfoRow(title: "Eye Color", value: hero.appearance.eyeColor)
            InfoRow(title: "Hair Color", value: hero.appearance.hairColor)
        }
    }
}
