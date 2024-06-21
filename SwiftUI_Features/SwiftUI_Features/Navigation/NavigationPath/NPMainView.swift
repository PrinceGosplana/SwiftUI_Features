//
//  NPMainView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 12.06.2024.
//

import SwiftUI

struct NPMainView: View {

    @State private var router = RecipesRouter()

    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            NPRecipesFeedView(recipe: Recipe())
                .environment(router)
                .navigationDestination(for: RecipesRouter.Route.self) { route in
                    switch route {
                    case .recipesSearch: NPRecipesSearchView()
                            .environment(router)
                    case .recipeDetail(recipe: let recipe):
                        NPRecipesDetailView(recipe: recipe)
                            .environment(router)
                    }
                }
                .navigationTitle("NavigationPath")
        }
    }
}

#Preview {
    NPMainView()
}
