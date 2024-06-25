//
//  MenuView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu("Simple menu", systemImage: "ellipsis.circle") {
            Button("Edit", systemImage: "pencil") {}
            Button("Delete", systemImage: "trash") {}
            Button("Move", systemImage: "person") {}
            Button("Dummy", systemImage: "house") {}
        }

        Menu("Grouped menu", systemImage: "ellipsis.circle") {
            ControlGroup("Can delete this title") {
                Button("Edit", systemImage: "pencil") {}
                Button("Delete", systemImage: "trash", role: .destructive) {}
            }
            Button("Move", systemImage: "person") {}
            Button("Dummy", systemImage: "house") {}
        }

        Menu("Nested menu", systemImage: "ellipsis.circle") {
            Button("Edit", systemImage: "pencil") {}
            Button("Delete", systemImage: "trash") {}
            Menu("More options") {
                Button("Move", systemImage: "person") {}
                Button("Dummy", systemImage: "house") {}
            }
        }
    }
}

#Preview {
    MenuView()
}
