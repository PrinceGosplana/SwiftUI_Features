//
//  ToolbarIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct ToolbarIntro: View {
    var body: some View {
        NavigationStack {
            //    Use the toolBar modifier to create ToolbarItems (buttons) that will show up insi NavigationStack.
            VStack(spacing: 20) {
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        //    By default, when you add a ToolbarItem to a nav bar, it shows on the trailing side.
                        Image(systemName: "aspectratio")
                    }
                }
            }
            .tint(.green)
        }
    }
}

#Preview {
    ToolbarIntro()
}
