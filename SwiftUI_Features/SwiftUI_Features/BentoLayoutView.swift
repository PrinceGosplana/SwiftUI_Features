//
//  BentoLayoutView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.10.2024.
//

import SwiftUI

struct Split<Content: View>: View {
    @Environment(\.direction) var axis
    @ViewBuilder var content: Content
    
    var body: some View {
        HStack {
            let layout = axis == .horizontal ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
            layout {
                content
            }
            .environment(\.direction, axis.other)
        }
    }
}

extension Axis {
    var other: Self {
        self == .horizontal ? .vertical : .horizontal
    }
}

extension EnvironmentValues {
    @Entry var direction: Axis = .vertical
}

struct SplitItem {
    var children: [SplitItem] = []
}

struct BentoLayoutView: View {
    var body: some View {
        Split {
            Split {
                Color.red
                Split {
                    Color.blue
                    Color.yellow
                }
                Color.teal
            }
            Color.green
            Color.cyan
        }
    }
}

#Preview {
    BentoLayoutView()
}
