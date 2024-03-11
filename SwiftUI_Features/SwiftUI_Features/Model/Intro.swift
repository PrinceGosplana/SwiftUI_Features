//
//  Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.03.2024.
//

import SwiftUI

/// Intro model
struct Intro: Identifiable {
    var id: UUID = .init()
    var text: String
    var textColor: Color
    var circleColor: Color
    var bgColor: Color
    var circleOffset: CGFloat = 0
    var textOffset: CGFloat = 0
}
