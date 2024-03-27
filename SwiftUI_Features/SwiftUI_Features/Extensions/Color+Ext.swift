//
//  Color+Ext.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI

extension Color {
    /// Return a random color
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
