//
//  NPRecipesDetailView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 12.06.2024.
//

import SwiftUI

struct NPRecipesDetailView: View {
    
    let recipe: Recipe

    var body: some View {
        Color
            .indigo
            .ignoresSafeArea()
            .navigationTitle("Recipe Detail")
    }
}

#Preview {
    NPRecipesDetailView(recipe: Recipe())
}
