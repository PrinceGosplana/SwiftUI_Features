//
//  PositioningBadgesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.10.2024.
//

import SwiftUI

struct BadgeValue: Identifiable {
    var view: AnyView
    var position: Anchor<CGPoint>
    var id: Namespace.ID
}

struct BadgePreferenceKey: PreferenceKey {
    static var defaultValue: [BadgeValue] = []
    static func reduce(value: inout [BadgeValue], nextValue: () -> [BadgeValue]) {
        value.append(contentsOf: nextValue())
    }
}

struct BadgeHelper: ViewModifier {
    var alignment: Anchor<CGPoint>.Source
    var view: AnyView
    @Namespace private var ns
    
    func body(content: Content) -> some View {
        content.anchorPreference(key: BadgePreferenceKey.self, value: alignment, transform: { anchor in
            return [BadgeValue(view: view, position: anchor, id: ns)]
        })
    }
}

extension View {
    func overlayBadges() -> some View {
        overlayPreferenceValue(BadgePreferenceKey.self, { badges in
            GeometryReader { proxy in
                ForEach(badges) { badge in
                    let p = proxy[badge.position]
                    badge.view
                        .position(p)
                }
            }
        })
    }
}

extension View {
    func asIcon(color: Color) -> some View {
        self
            .font(.largeTitle)
            .symbolVariant(.fill)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 64, height: 64)
            .background(color.gradient, in: .rect(cornerRadius: 16, style: .continuous))
    }
}

extension View {
    func inlineBadge(_ value: Int, alignment: Alignment) -> some View {
        overlay(alignment: alignment) {
            Badge(value: value)
                .alignmentGuide(alignment.vertical, computeValue: { dimension in
                    dimension[VerticalAlignment.center]
                })
                .alignmentGuide(alignment.horizontal, computeValue: { dimension in
                    dimension[HorizontalAlignment.center]
                })
                .fixedSize()
        }
    }
    
    func badge(_ value: Int, alignment: Anchor<CGPoint>.Source = .topTrailing) -> some View {
        modifier(BadgeHelper(alignment: alignment, view: AnyView(Badge(value: value).fixedSize())))
    }
}

struct Badge: View {
    
    var value: Int
    @ScaledMetric(relativeTo: .body) private var minWidth = 24
    
    var body: some View {
        Text("\(value)")
            .font(.body)
            .foregroundStyle(.white)
            .padding(.horizontal, 8)
            .frame(minWidth: minWidth)
            .frame(height: minWidth)
            .background(.red.gradient, in: .capsule)
    }
}

struct PositioningBadgesView: View {
    @State var showWorld = false
        
        var body: some View {
            HStack {
                if showWorld {
                    Image(systemName: "globe")
                        .asIcon(color: .blue)
                }
                Image(systemName: "phone")
                    .asIcon(color: .green)
                    .badge(1000, alignment: .topTrailing)
                Image(systemName: "message")
                    .asIcon(color: .green)
                Image(systemName: "book")
                    .asIcon(color: .orange)
                    .onTapGesture {
                        withAnimation {
                            showWorld.toggle()
                        }
                    }
            }
            .padding()
            .overlayBadges()
        }
}

#Preview {
    PositioningBadgesView()
}
