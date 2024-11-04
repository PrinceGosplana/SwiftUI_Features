//
//  NavWithPathAndEnum.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.11.2024.
//

import SwiftUI

//You can also use an enum to keep
//track of all of your screens.
enum Screens {
    case screen1
    case screen2
    case screen3
}

struct NavWithPathAndEnum: View {
    @State private var navPath: [Screens] = []
    //    The navPath is now set to the
    //    enum.
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Button("Deep Link to Screen 2") {
                    navPath.append(Screens.screen1)
                    navPath.append(Screens.screen2)
                    //    The NavigationStack’s path is
                    //    bound to an array of enums
                    //    now.
                }
                Button("Deep Link to Screen 3") {
                    navPath.append(Screens.screen1)
                    navPath.append(Screens.screen2)
                    navPath.append(Screens.screen3)
                }
            }
            .navigationDestination(for: Screens.self) { screenEnum in
                NavigationController.navigate(to: screenEnum)
            }
            .navigationTitle("Navigate with Path")
        }
        .font(.title)
    }
}

#Preview {
    NavWithPathAndEnum()
}

class NavigationController {
    //This navigate function returns the view to navigate to.
    @ViewBuilder
    static func navigate(to screen: Screens) -> some View {
        switch screen {
        case .screen1:
            Image(systemName: "1.square.fill").font(.largeTitle).foregroundStyle(.green)
        case .screen2:
            Image(systemName: "2.square.fill").font(.largeTitle).foregroundStyle(.red)
        case .screen3:
            Image(systemName: "3.square.fill").font(.largeTitle).foregroundStyle(.purple)
        }
    }
}
