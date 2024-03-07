//
//  ScrollTransitionViewExample.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.03.2024.
//

import SwiftUI

struct ScrollTransitionViewExample: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyHStack {
                ForEach(1...30, id: \.self) { _ in
                    Rectangle()
                        .fill(.red.gradient)
                        .frame(height: 135)
                }
            }
            .padding(.horizontal, 30)
            /// Scroll transitionn
            .scrollTransition(topLeading: .interactive, bottomTrailing: .interactive) { view, phase in
                view
                    .opacity(1 - (phase.value < 0 ? -phase.value : phase.value))
            }
        }
    }
}

#Preview {
    ScrollTransitionViewExample()
}
