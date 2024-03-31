//
//  MockData.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI

struct ColorItem: Identifiable {
    let id = UUID()
    let color: Color
}

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 { array.append(Color.random)}
        return array
    }

    static var colorItems = [ColorItem(color: .teal),
                             ColorItem(color: .pink),
                             ColorItem(color: .indigo),
                             ColorItem(color: .orange),
                             ColorItem(color: .purple),
                             ColorItem(color: .yellow),
                             ColorItem(color: .mint),
                             ColorItem(color: .blue),
                             ColorItem(color: .brown),
                             ColorItem(color: .primary)]
}
