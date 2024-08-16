//
//  ScrollViewTransitions.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

private struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let color: Color

    static let previews: [ListItem] = [
        .init(title: "Row 1", color: .red),
        .init(title: "Row 2", color: .blue),
        .init(title: "Row 3", color: .mint),
        .init(title: "Row 4", color: .orange),
        .init(title: "Row 5", color: .indigo),
        .init(title: "Row 6", color: .yellow),
    ]
}
struct ScrollViewTransitions: View {
    var body: some View {
        ScrollView {
            ForEach(ListItem.previews) { item in
                item.color
                    .frame(height: 300)
                    .overlay {
                        Text(item.title)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ScrollViewTransitions()
}
