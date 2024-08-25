//
//  DoulingoModel.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct DoulingoModel: Identifiable {
    let id = UUID()
    let xOffset: CGFloat
    let icon: String
}

extension DoulingoModel {
    static let mock: [DoulingoModel] = [
        .init(xOffset: 0, icon: "star.fill"),
        .init(xOffset: -40, icon: "dumbbell.fill"),
        .init(xOffset: -60, icon: "forward.fill"),
        .init(xOffset: -40, icon: "star.fill"),
        .init(xOffset: 0, icon: "bubbles.and.sparkles.fill")
    ]
}
