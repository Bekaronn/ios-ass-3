//
//  PowerstatsSection.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct PowerstatsSection: View {
    let hero: Hero
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            SectionTitle("Power Stats")
            
            HStack {
                StatView(title: "Intelligence", value: hero.powerstats.intelligence)
                StatView(title: "Strength", value: hero.powerstats.strength)
                StatView(title: "Speed", value: hero.powerstats.speed)
            }
            
            HStack {
                StatView(title: "Durability", value: hero.powerstats.durability)
                StatView(title: "Power", value: hero.powerstats.power)
                StatView(title: "Combat", value: hero.powerstats.combat)
            }
        }
    }
}
