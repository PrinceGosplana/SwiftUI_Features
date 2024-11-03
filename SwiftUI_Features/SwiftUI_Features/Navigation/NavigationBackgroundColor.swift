//
//  NavigationBackgroundColor.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct NavigationBackgroundColor: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.25)
                    .ignoresSafeArea()
                Color.gray.opacity(0.25)
            }
            .navigationTitle("Background Color")
        }
    }
}

#Preview {
    NavigationBackgroundColor()
}
