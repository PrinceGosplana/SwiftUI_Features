//
//  RoutingApp.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI
/*
@main
struct RoutingApp: App {
    @ObservedObject var router = Router()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                RoutHomeView()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .livingroom:
                        RoutLivingroomView()
                    case .bedroom(let owner):
                        RoutBedroomView(ownerName: owner)
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
*/
