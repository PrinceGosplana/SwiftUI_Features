//
//  NavigationStackView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct NavigationStackView: View {

    // Programatic stack
    @State var stack = NavigationPath()

    var body: some View {
        /*
         NavigationStack {
            NavigationLink("Navigate to new view", value: "Hooray! A new view!")
                .navigationDestination(for: String.self) { value in
                    Text("Detail page = \(value)")
                }
        }
        */
        NavigationStack(path: $stack) {
            NavigationLink("Navigate to new view", value: "Hooray! A new view!")
                .navigationDestination(for: String.self) { value in
                    VStack {
                        Text("Detail page = \(value)")
                        Button("Pop to root") {
                            stack.removeLast()
                            /// going to root if
//                            stack = .init()
                        }
                    }
                }
        }
    }
}

#Preview {
    NavigationStackView()
}
