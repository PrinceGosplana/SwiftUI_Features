//
//  PaintInfo.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct PaintInfo: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let author: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension PaintInfo {
    static let mockPaint = [
        PaintInfo(name: "Nebraska", author: "Jordj O. Key"),
        PaintInfo(name: "Kavasaki", author: "Minay L.")
    ]
}
