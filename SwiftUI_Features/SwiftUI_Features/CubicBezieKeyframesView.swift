//
//  CubicBezieKeyframesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.10.2024.
//

import SwiftUI
import Charts

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

extension VectorArithmetic {
    static func *(lhs: Double, rhs: Self) -> Self {
        rhs.scaled(by: lhs)
    }
}

struct CubicBezieKeyframesView: View {
    var body: some View {
        let c = CubicBezier<CGPoint>(
            p0: .init(x: 0, y: 0),
            p1: .init(x: 1/3, y: 0),
            p2: .init(x: 2/3, y: 1),
            p3: .init(x: 1, y: 1)
        )
//        Chart {
//            
//        }
    }
}

#Preview {
    CubicBezieKeyframesView()
}
