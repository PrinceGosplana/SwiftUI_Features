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
    var body: some View {
        let t0 = KeyframeTimeline(initialValue: 0) {
            for point in points {
                CubicKeyframe(point.0, duration: point.duration)
            }
        }
        let t1 = MyKeyframeTimeline(initialValue: 0, tracks:
                                        [
                                            MyKeyframeTrack(\.self, points.map { p in
                                                MyCubicKeyframe(p.0, duration: p.duration)
                                            })
                                        ]
        )
        Chart {
            let times = stride(from: 0, through: t0.duration, by: 0.01)
            ForEach(Array(times), id: \.self) { time in
                LineMark(x: .value("x", time), y: .value("y", t0.value(time: time)), series: .value("1", "1"))
                LineMark(x: .value("x", time), y: .value("y", t1.value(time: time)), series: .value("2", "2"))
                    .foregroundStyle(.green)
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

#Preview {
    CubicBezieKeyframesView()
}


protocol MyKeyframeTracks<Root> {
    associatedtype Root

    var duration: TimeInterval { get }

    func value(at time: TimeInterval, modify initial: inout Root)
}

protocol MyKeyframes<Value> {
    associatedtype Value

    var duration: TimeInterval { get }
    var to: Value { get }

    func interpolate(from: Value, time: TimeInterval) -> Value
}

struct MyKeyframeTimeline<Root> {
    var initialValue: Root
    var tracks: [any MyKeyframeTracks<Root>]

    var duration: TimeInterval {
        tracks.map { $0.duration }.max() ?? 0
    }

    func value(time: TimeInterval) -> Root {
        var result = initialValue
        for track in tracks {
            track.value(at: time, modify: &result)
        }
        return result
    }
}

struct MyKeyframeTrack<Root, Value: Animatable>: MyKeyframeTracks {
    var keyPath: WritableKeyPath<Root, Value>
    var keyframes: [any MyKeyframes<Value>]

    init(_ keyPath: WritableKeyPath<Root, Value>, _ keyframes: [any MyKeyframes<Value>]) {
        self.keyPath = keyPath
        self.keyframes = keyframes
    }

    var duration: TimeInterval {
        keyframes.reduce(0, { $0 + $1.duration })
    }

    func value(at time: TimeInterval, modify initial: inout Root) {
        initial[keyPath: keyPath] = value(at: time, initialValue: initial[keyPath: keyPath])
    }

    func value(at time: TimeInterval, initialValue: Value) -> Value {
        var currentTime: TimeInterval = 0
        var previousValue = initialValue
        for keyframe in keyframes {
            let relativeTime = time - currentTime
            defer { currentTime += keyframe.duration }
            guard relativeTime <= keyframe.duration else {
                previousValue = keyframe.to
                continue
            }

            return keyframe.interpolate(from: previousValue, time: relativeTime)
        }
        return keyframes.last?.to ?? initialValue
    }
}

struct MyLinearKeyframe<Value: Animatable>: MyKeyframes {
    var to: Value
    var duration: TimeInterval

    init(_ to: Value, duration: TimeInterval) {
        self.to = to
        self.duration = duration
    }

    func interpolate(from: Value, time: TimeInterval) -> Value {
        let progress = time/duration
        var result = from
        result.animatableData.interpolate(towards: to.animatableData, amount: progress)
        return result
    }
}

struct MyMoveKeyframe<Value: Animatable>: MyKeyframes {
    init(_ to: Value, duration: TimeInterval) {
        self.to = to
        self.duration = duration
    }
    var to: Value
    var duration: TimeInterval

    func interpolate(from: Value, time: TimeInterval) -> Value {
        to
    }
}

struct MyCubicKeyframe<Value: Animatable>: MyKeyframes {
    var to: Value
    var duration: TimeInterval
    var startVelocity: Value?
    var endVelocity: Value?

    init(_ to: Value, duration: TimeInterval, startVelocity: Value? = nil, endVelocity: Value? = nil) {
        self.to = to
        self.duration = duration
        self.startVelocity = startVelocity
        self.endVelocity = endVelocity
    }

    func interpolate(from: Value, time: TimeInterval) -> Value {
        let progress = time/duration
        let cp1 = AnimatablePair(1/3.0, from.animatableData + (startVelocity?.animatableData ?? .zero).scaled(by: duration/3))
        let cp2 = AnimatablePair(2/3.0, to.animatableData - (endVelocity?.animatableData ?? .zero).scaled(by: duration/3))
        let bezier = CubicBezier(p0: AnimatablePair(0, from.animatableData), p1: cp1, p2: cp2, p3: AnimatablePair(1, to.animatableData))
        var result = from
        let t = bezier.map { $0.first }.findT(time: progress)
        result.animatableData = bezier.value(for: t).second
        return result
    }
}
