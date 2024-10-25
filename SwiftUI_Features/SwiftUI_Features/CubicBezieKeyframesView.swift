//
//  CubicBezieKeyframesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.10.2024.
//

import SwiftUI
import Charts

extension VectorArithmetic {
    static func *(lhs: Double, rhs: Self) -> Self {
        rhs.scaled(by: lhs)
    }
}

struct CubicBezier<Value: VectorArithmetic> {
    var p0, p1, p2, p3: Value
    
    func value(for t: Double) -> Value {
        assert(t >= 0 && t <= 1)
        return pow(1-t, 3) * p0 +
        3 * pow(1-t, 2) * t * p1 +
        3 * (1-t) * pow(t, 2) * p2 +
        pow(t, 3) * p3
    }
}

extension CubicBezier {
    func map<V: VectorArithmetic>(transform: (Value) -> V) -> CubicBezier<V> {
        CubicBezier<V>(p0: transform(p0), p1: transform(p1), p2: transform(p2), p3: transform(p3))
    }
}

extension CubicBezier where Value == Double {
    func findT(time: Double) -> Double {
        let epsilon = 0.01
        var lower = 0.0
        var upper = 1.0
        var mid = 0.5
        var result = value(for: mid)
        repeat {
            if result-time > 0 {
                upper = mid
            } else {
                lower = mid
            }
            mid = (lower + upper)/2
            result = value(for: mid)
        } while abs(result-time) > epsilon
        return mid
    }
}

extension CGPoint: VectorArithmetic {
    public static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        var copy = lhs
        copy.animatableData -= rhs
        return copy
    }
    
    public mutating func scale(by rhs: Double) {
        animatableData.scale(by: rhs)
    }
    
    public var magnitudeSquared: Double {
        animatableData.magnitudeSquared
    }
    
    public static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        var copy = lhs
        copy.animatableData += rhs.animatableData
        return copy
    }
    
}

let points: [(Double, duration: TimeInterval)] = [
    (-30, duration: 0.5),
    (30, duration: 1),
    (0, duration: 0.5),
]

struct CubicBezieKeyframesView: View {
    let t0 = KeyframeTimeline(initialValue: 0) {
        for point in points {
            CubicKeyframe(point.0, duration: point.duration)
        }
    }
    
    var body: some View {
        let c = CubicBezier<AnimatablePair>(p0: .init(0, 0), p1: .init(0.5, 0), p2: .init(2/3.0, 1), p3: .init(1, 1))
        let timeBezier = c.map { $0.first }
        let u = UnitCurve.bezier(startControlPoint: .init(x: 0.5, y: 0), endControlPoint: .init(x: 2/3.0, y: 1))
        let xs = Array(stride(from: 0, through: 1, by: 0.01))
        Chart {
            ForEach(xs, id: \.self) { x in
                let t = timeBezier.value(for: x)
                let p = c.value(for: t)
                LineMark(x: .value("x", Double(p.first)), y: .value("y", Double(p.second)), series: .value("1", "1"))
            }
            ForEach(xs, id: \.self) { x in
                LineMark(x: .value("x", Double(x)), y: .value("y", Double(u.value(at: x))), series: .value("2", "2"))
                    .foregroundStyle(.green)
            }
        }
    }
}

#Preview {
    CubicBezieKeyframesView()
}
