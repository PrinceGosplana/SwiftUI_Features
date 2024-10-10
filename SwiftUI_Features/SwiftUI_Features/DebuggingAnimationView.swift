//
//  DebuggingAnimationView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.10.2024.
//

import SwiftUI

struct ConstantAnimation: CustomAnimation {
    var progress: Double
    
    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
        print(value)
        return value.scaled(by: progress)
    }

    func shouldMerge<V>(previous: Animation, value: V, time: TimeInterval, context: inout AnimationContext<V>) -> Bool where V : VectorArithmetic {
        return true
    }
}

struct DebugAnimation: ViewModifier {
    @Binding var state: Bool
    @State private var progress: Double = 0

    func body(content: Content) -> some View {
        let anim = Animation(ConstantAnimation(progress: progress))
        content
            .animation(anim, value: state)
            .onChange(of: progress) {
                state = false
                withAnimation {
                    state = true
                }
            }
            .overlay(alignment: .bottom) {
                Slider(value: $progress, in: 0...1)
                                    .frame(width: 200, height: 40)
                                    .alignmentGuide(.bottom, computeValue: { dimension in
                                        dimension[.top]
                                    })
            }
    }
}

struct DebuggingAnimationView: View {
    @State private var toggle = false

        var body: some View {
            VStack {
                        Rectangle()
                            .fill(toggle ? Color.red : .blue)
                            .frame(width: toggle ? 200 : 100, height: 200)
                            .modifier(DebugAnimation(state: $toggle))
                        Spacer()
                    }
                    .padding()
        }
}

#Preview {
    DebuggingAnimationView()
}
