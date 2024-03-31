//
//  ScrollExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 31.03.2024.
//

import SwiftUI

// https://www.youtube.com/watch?v=IwUp2iP0jnI&ab_channel=SeanAllen

struct ScrollExampleView: View {

    @Environment(\.verticalSizeClass) var verticalSizeClass

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(MockData.colorItems) { item in
                    Circle()
                        .containerRelativeFrame(.horizontal,
                                                count: verticalSizeClass == .regular ? 2 : 4,
                                                spacing: 16)
                        .foregroundStyle(item.color.gradient)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1.0 : 0.5)
                                .scaleEffect(x: phase.isIdentity ? 1.0 : 0.3,
                                             y: phase.isIdentity ? 1.0 : 0.3)
                                .offset(y: phase.isIdentity ? 0 : 50)
                        }
                }
            }
            .scrollTargetLayout()
        }
        /// put scroll indicator 16 point under content
        .contentMargins(16, for: .scrollContent)
        /// Sets the scroll behavior of views scrollable
        .scrollTargetBehavior(.viewAligned)
//        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollExampleView()
}
