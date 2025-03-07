//
//  HeroImageView.swift
//  HeroRandomizer
//
//  Created by Bekarys on 07.03.2025.
//

import SwiftUI

struct HeroImageView: View {
    let url: URL?
    
    var body: some View {
        AsyncImage(url: url) { phase in
            Group {
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                case .failure:
                    Image(systemName: "person.crop.circle.badge.exclamationmark")
                @unknown default:
                    EmptyView()
                }
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 250)
            .cornerRadius(15)
            .shadow(radius: 5)
            .padding()
        }
    }
}
