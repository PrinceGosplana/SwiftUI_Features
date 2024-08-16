//
//  AnimationCompletionCriteria.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

struct AnimationCompletionCriteria: View {
    @State private var scaleRotate = false
    @State private var heartCount = 0
    @State private var jump = false
    @State private var heartIcon = "🤍"

    var body: some View {
        VStack(spacing: 50) {
            Button {
                withAnimation(.interpolatingSpring(
                    stiffness: 170, damping: 10)) {
                        scaleRotate.toggle()
                    } completion: {
                        withAnimation(.bouncy(extraBounce: 0.4)) {
                            scaleRotate = false
                        }
                    }

            } label: {
                Text("👍")
                    .rotationEffect(.degrees(scaleRotate ? -45 : 0), anchor: .bottomLeading)
                    .scaleEffect(scaleRotate ? 1.5 : 1)
            }

            Button {
                withAnimation(.snappy(duration: 0.3)) {
                        jump.toggle()
                    heartCount += 1
                    heartIcon = "❤️"
                    } completion: {
                        withAnimation(.bouncy(extraBounce: 0.4)) {
                            jump = false
                        }
                    }

            } label: {
                Text(heartIcon)
                    .scaleEffect(jump ? 1.5 : 1)
                    .offset(y: jump ? -20 : 0)
            }
        }
    }
}

#Preview {
    AnimationCompletionCriteria()
}
