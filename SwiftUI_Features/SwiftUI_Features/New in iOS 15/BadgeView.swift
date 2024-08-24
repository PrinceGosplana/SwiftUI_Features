//
//  BadgeView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.08.2024.
//

import SwiftUI

struct BadgeView: View {

    @State private var heartbadgeSeen = false
    @State private var geatbadgeSeen = false

    var body: some View {
        TabView {
            Color.mint
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .badge(10)

            Color.purple
                .onAppear {
                    heartbadgeSeen = true
                }
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                }
                .badge(heartbadgeSeen ? nil : "New")
            Color.cyan
                .onAppear {
                    geatbadgeSeen = true
                }
                .tabItem {
                    Image(systemName: "gearshape")
                }
                .badge(geatbadgeSeen ? 0 : 2)
        }
    }
}

#Preview {
    BadgeView()
}
