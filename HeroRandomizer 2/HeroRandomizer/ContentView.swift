//
//  ContentView.swift
//  HeroRandomizer
//
//  Created by Arman Myrzakanurov on 28.02.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            if viewModel.isLoading {
                LoadingView()
            } else if let error = viewModel.error {
                ErrorView(error: error) {
                    Task { await viewModel.fetchHero() }
                }
            } else if let hero = viewModel.selectedHero {
                HeroDetailView(hero: hero) {
                    Task { await viewModel.fetchHero() }
                }
            } else {
                EmptyStateView {
                    Task { await viewModel.fetchHero() }
                }
            }
        }
        .animation(.default, value: viewModel.selectedHero)
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
