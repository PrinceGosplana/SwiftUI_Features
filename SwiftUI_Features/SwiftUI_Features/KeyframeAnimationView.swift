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
                .keyframeAnimator(initialValue: CGSize.zero, trigger: startKeyframeAnimation) { view, frame in
                    
                } keyframes: { frame in
                    
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
    var offset: CGFloat = 0
    var rotation: Angle = .zero
}

#Preview {
    KeyframeAnimationView()
}
