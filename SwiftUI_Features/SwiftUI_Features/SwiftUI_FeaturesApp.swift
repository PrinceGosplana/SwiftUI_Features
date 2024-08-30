//
//  SwiftUI_FeaturesApp.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.03.2024.
//

import SwiftUI

@main
struct SwiftUI_FeaturesApp: App {

    /*
     var body: some Scene {
     WindowGroup {
     StopUsingSpacerView()
     //            AnimateNumbers()
     //                .preferredColorScheme(.dark)
     //            NavigationBarBaseSettingsView()
     //            NewApiScrollView()
     //            ContentView()
     }
     }
     */
    @ObservedObject var router = Router()

    var body: some Scene {
        WindowGroup {
            KeyboardAccessoryView()
//            NavigationStack(path: $router.navPath) {
//                RoutHomeView()
//                    .navigationDestination(for: Router.Destination.self) { destination in
//                        switch destination {
//                        case .livingroom:
//                            RoutLivingroomView()
//                        case .bedroom(let owner):
//                            RoutBedroomView(ownerName: owner)
//                        }
//                    }
//            }
//            .environmentObject(router)
        }
    }
}
