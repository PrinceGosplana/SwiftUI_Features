//
//  NavLinkPopToRoot.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.11.2024.
//

import SwiftUI

struct NavLinkPopToRoot: View {
    @State private var navPath: [String] = []
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                NavigationLink(value: "View 2") {
                    Text("Go to View 2")
                }
            }
            .navigationTitle("Pop to Root")
            .navigationDestination(for: String.self) { pathValue in
                if pathValue == "View 2" {
                    NavLinkView2(navPath: $navPath)
                } else {
                    NavLinkView3(navPath: $navPath)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    NavLinkPopToRoot()
}

struct NavLinkView2: View {
    @Binding var navPath: [String]
    //Make sure your destination views have access to your navigation path array.
    var body: some View {
        VStack(spacing: 20) {
            NavigationLink(value: "View 3") {
                Text("Go to View 3")
            }
            Text("Nav Path Items:")
            Text(navPath, format: .list(type: .and, width: .short))
        }
        .navigationTitle("View 2")
    }
}

struct NavLinkView3: View {
    @Binding var navPath: [String]
    var body: some View {
        VStack {
            Button("Pop to Root View") {
                navPath.removeAll()
                //This is where the magic happens. To pop to the root (first view), just remove all
                //items from the navigation path array.
            }
            Text("Nav Path Items:")
            Text(navPath, format: .list(type: .and, width: .short))
        }
        .navigationTitle("View 3")
    }
}
