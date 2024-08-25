//
//  NewVisualEffectModifierView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct NewVisualEffectModifierView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                Rectangle()
                    .fill(.cyan)
                    .frame(height: 120)
                    .visualEffect { content, geometryProxy in
                        content
                            .offset(y: geometryProxy.bounds(of: .scrollView)?.minY ?? 0)
                    }
                    .zIndex(1000)

                ForEach(1...30, id: \.self) { _ in
                    Rectangle()
                        .fill(.mint.gradient)
                        .frame(height: 35)
                }
                .padding(.horizontal, 35)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    NewVisualEffectModifierView()
}
