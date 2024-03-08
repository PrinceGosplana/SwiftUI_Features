//
//  CustomTransitionsView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.03.2024.
//

import SwiftUI

struct CustomTransitionsView: View {
    @State private var showView: Bool = false
    
    var body: some View {
        VStack {
            if showView {
                Rectangle()
                    .fill(.red.gradient)
                    .frame(width: 150, height: 150)
                    .transition(MyTransition())
            }
            
            Button("Show view") {
                withAnimation(.init(MyAnimation())) {
                    showView.toggle()
                }
            }
        }
    }
}

// Custom transition
struct MyTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
        /// Adding animation
//            .opacity(phase != .identity ? 0 : 1)
            .rotation3DEffect(
                .init(degrees: phase.value * (phase == .willAppear ? 90 : -90)),
                axis: (x: 1.0, y: 0.0, z: 0.0)
            )
        
    }
}

/// Custom animation
struct MyAnimation: CustomAnimation {
    var duration: CGFloat = 1
    
    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
        if time > duration { return nil }
        return value.scaled(by: time)
    }
}

#Preview {
    CustomTransitionsView()
}
