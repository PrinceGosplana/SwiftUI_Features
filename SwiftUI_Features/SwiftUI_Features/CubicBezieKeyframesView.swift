//
//  CubicBezieKeyframesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.10.2024.
//

import SwiftUI

struct CubicBezier<Value: VectorArithmetic> {
    var p0, p1, p2, p3: Value
}

struct CubicBezieKeyframesView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CubicBezieKeyframesView()
}
