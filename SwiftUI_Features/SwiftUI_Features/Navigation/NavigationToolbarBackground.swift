//
//  NavigationToolbarBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct NavigationToolbarBackground: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.25)
                    .ignoresSafeArea()
            }
            .navigationTitle("Toolbar Background")
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationToolbarBackground()
}
