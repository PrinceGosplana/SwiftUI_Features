//
//  NPRecipesFeedViiw.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 12.06.2024.
//

import SwiftUI

struct NPRecipesFeedView: View {

    let recipe: Recipe
    @Environment(RecipesRouter.self) var router

    var body: some View {
        VStack(spacing: 20) {
            Button {
                router.navigateTo(route: .recipesSearch)
            } label: {
                Image(systemName: "magnifyingglass")
            }

            Button {
                router.navigateTo(route: .recipeDetail(recipe: recipe))
            } label: {
                Image(systemName: "person")
            }
        }
    }
}
