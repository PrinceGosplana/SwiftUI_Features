//
//  NavigationUINavigationBarAppearance.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct NavigationUINavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            //        Use UINavigationBarAppearance to
            //        apply style/color to ALL navigation
            //        bars.
            VStack {
            }
            .navigationTitle("Appearance")
            .font(.title)
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor(Color.green.opacity(0.25))
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    NavigationUINavigationBarAppearance()
}
