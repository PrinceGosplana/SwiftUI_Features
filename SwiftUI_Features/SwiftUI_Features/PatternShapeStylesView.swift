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

struct PatternShapeStylesView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PatternShapeStylesView()
}
