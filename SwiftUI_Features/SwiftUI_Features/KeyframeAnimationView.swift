//
//  KeyframeAnimationView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.03.2024.
//

import SwiftUI

struct KeyframeAnimationView: View {
    @State private var startKeyframeAnimation: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            Image(.xcode)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .keyframeAnimator(initialValue: Keyframe(), trigger: startKeyframeAnimation) { view, frame in
                    view.scaleEffect(frame.scale)
                        .rotationEffect(frame.rotation, anchor: .bottom)
                        .offset(y: frame.offsetY)
                } keyframes: { frame in
                    KeyframeTrack(\.offsetY) {
                        CubicKeyframe(10, duration: 0.15)
                        SpringKeyframe(-100, duration: 0.3, spring: .bouncy)
                        CubicKeyframe(-100, duration: 0.1)
                        CubicKeyframe(-100, duration: 0.1)
                        CubicKeyframe(-100, duration: 0.1)
                        CubicKeyframe(-100, duration: 0.15)
                        SpringKeyframe(0, duration: 0.3, spring: .bouncy)
                    }
                    KeyframeTrack(\.scale) {
                        CubicKeyframe(0.9, duration: 0.15)
                        CubicKeyframe(1.2, duration: 0.3)
                        CubicKeyframe(1.2, duration: 0.1)
                        CubicKeyframe(1.2, duration: 0.1)
                        CubicKeyframe(1.2, duration: 0.1)
                        CubicKeyframe(1, duration: 0.3)
                    }
                    KeyframeTrack(\.rotation) {
                        CubicKeyframe(.zero, duration: 0.15)
                        CubicKeyframe(.zero, duration: 0.3)
                        CubicKeyframe(.init(degrees: -20), duration: 0.1)
                        CubicKeyframe(.init(degrees: 20), duration: 0.1)
                        CubicKeyframe(.init(degrees: -20), duration: 0.1)
                        CubicKeyframe(.init(degrees: 0), duration: 0.15)
                    }
                }
            Spacer()
            
            Button("Keyframe animation") {
                startKeyframeAnimation.toggle()
            }
            .fontWeight(.bold)
            
        }
    }
}

struct Keyframe {
    var scale: CGFloat = 1
    var offsetY: CGFloat = 0
    var rotation: Angle = .zero
}

#Preview {
    KeyframeAnimationView()
}
