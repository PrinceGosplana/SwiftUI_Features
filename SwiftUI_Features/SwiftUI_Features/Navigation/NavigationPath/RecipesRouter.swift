//
//  RecipesRouter.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 12.06.2024.
//

import SwiftUI

struct Recipe: Hashable {}

@Observable
final class RecipesRouter {

    var navigationPath = NavigationPath()

    enum Route: Hashable {
        case recipesSearch
        case recipeDetail(recipe: Recipe)
    }

    func navigateTo(route: Route) {
        navigationPath.append(route)
    }
}
