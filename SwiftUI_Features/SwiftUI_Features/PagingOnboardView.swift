//
//  PagingOnboardView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.10.2024.
//

import SwiftUI

struct PagingOnboardView: View {
    var body: some View {
        TabView {
            ContentUnavailableView("Look", image: "coffee", description: Text("Loot at this coffee"))
            ContentUnavailableView("Eat", image: "donut", description: Text("Loot at this beautiful cola"))
            ContentUnavailableView("Dream", image: "meat", description: Text("Loot at this meat"))
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    PagingOnboardView()
}
