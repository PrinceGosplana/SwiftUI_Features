//
//  PatternShapeStylesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 23.10.2024.
//

import SwiftUI

struct HLine: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DiagonalPattern: View {
    var body: some View {
        HLine()
            .frame(width: 30, height: 30)
            .rotationEffect(.degrees(-45))
            .frame(width: 20, height: 20)
            .border(.green)
    }
}

struct PatternShapeStylesView: View {
    var body: some View {
        DiagonalPattern()
    }
}

#Preview {
    PatternShapeStylesView()
}
