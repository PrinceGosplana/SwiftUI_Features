//
//  CubicBezieKeyframesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.10.2024.
//

import SwiftUI

struct CubicBezier<Value: VectorArithmetic> {
    var p0, p1, p2, p3: Value

    func value(for t: Double) -> Value {
        assert(t >= 0 && t <= 1)

        return pow(1 - t, 3) * p0
        + 3 * pow(1 - t, 2) * t * p1
        + 3 * (1 - t) * pow(t, 2) * p2
        + pow(t, 3) * p3
    }
}

struct CubicBezieKeyframesView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CubicBezieKeyframesView()
}
