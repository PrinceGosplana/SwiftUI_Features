//
//  WithSections.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct WithSections: View {
    var body: some View {
        VStack(spacing: 20) {
            Menu("Edit") {
                Section {
                    Button("Menu Item 1", action: {})
                    Button("Menu Item 2", action: {})
                    Button("Menu Item 3", action: {})
                    Button("Menu Item 4", action: {})
                    Button("Menu Item 5", action: {})
                }
                Section {
                    Button("Menu Item 6", action: {})
                    Button("Menu Item 7", action: {})
                    Button("Menu Item 8", action: {})
                    Button("Menu Item 9", action: {})
                    Button("Menu Item 10", action: {})
                    Button("Menu Item 11", action: {})
                }
            }
        }
        Spacer()
            .font(.title)
    }
}

#Preview {
    WithSections()
}
