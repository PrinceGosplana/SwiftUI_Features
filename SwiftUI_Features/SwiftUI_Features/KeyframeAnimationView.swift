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
                        
                    }
                    KeyframeTrack(\.scale) {
                        
                    }
                    KeyframeTrack(\.rotation) {
                        
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
