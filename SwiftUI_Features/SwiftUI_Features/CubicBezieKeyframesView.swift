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
            p1: .init(x: 1/3.0, y: 0),
            p2: .init(x: 2/3.0, y: 1),
            p3: .init(x: 1, y: 1)
        )
        let u = UnitCurve.bezier(startControlPoint: .init(x: 1, y: 0), endControlPoint: .init(x: 2/3.0, y: 1))
        let xs = Array(stride(from: 0, through: 1, by: 0.01))
        Chart {
            ForEach(xs, id: \.self) { t in
                let p = c.value(for: t)
                LineMark(x: .value("x", Double(p.x)), y: .value("y", Double(p.y)), series: .value("1", "1"))
            }
            ForEach(xs, id: \.self) { x in
                LineMark(x: .value("x", Double(x)), y: .value("y", Double(u.value(at: x))), series: .value("2", "2"))
                    .foregroundStyle(.green)
            }
        }
    }
}

extension CGPoint: VectorArithmetic {
    public mutating func scale(by rhs: Double) {
        animatableData.scale(by: rhs)
    }
    
    public var magnitudeSquared: Double {
        animatableData.magnitudeSquared
    }
    
    public static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        var copy = lhs
        copy.animatableData += rhs.animatableData
        return copy
    }
    
    public static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        var copy = lhs
        copy.animatableData -= rhs.animatableData
        return copy
    }
}

#Preview {
    CubicBezieKeyframesView()
}
