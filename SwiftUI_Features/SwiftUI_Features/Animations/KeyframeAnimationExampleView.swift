//
//  KeyframeAnimationExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.10.2024.
//

import SwiftUI

struct KeyframeAnimationExampleView: View {

    @State private var isOn = false

    // Keyframe
    struct Value {
        var opacity: Double
        var trim: Double
    }
    let offState = Value(opacity: 0.1, trim: 0)
    let onState = Value(opacity: 1, trim: 1)

    var body: some View {

        /// Keyframe

        KeyframeAnimator(initialValue: isOn ? onState : offState, trigger: isOn) { value in
            ZStack {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(.red.opacity(value.opacity))
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .trim(from: 0, to: value.trim)
                    .stroke(.red, lineWidth: 3)
            }
            .animation(.default, value: isOn)
        } keyframes: { _ in
            KeyframeTrack(\.opacity) {
                if isOn {
                    MoveKeyframe(0.1)
                    CubicKeyframe(0.1, duration: 1.5)
                    CubicKeyframe(1, duration: 1)
                } else {
                    MoveKeyframe(1)
                    CubicKeyframe(0.1, duration: 2)
                }
            }
            KeyframeTrack(\.trim) {
                if isOn {
                    MoveKeyframe(0)
                    CubicKeyframe(1, duration: 2)
                } else {
                    MoveKeyframe(1)
                    CubicKeyframe(0, duration: 2)
                }
            }
        }
        .onTapGesture {
            isOn.toggle()
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    KeyframeAnimationExampleView()
}
