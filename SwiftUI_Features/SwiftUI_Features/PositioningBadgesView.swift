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
            anchorPreference(key: BadgePreferenceKey.self, value: alignment) { anchor in
                return [BadgeValue(view: AnyView(Badge(value: value).fixedSize()),
                                   position: anchor)]
            }
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
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .asIcon(color: .green)
            Image(systemName: "message")
                .asIcon(color: .green)
                .badge(1000, alignment: .topTrailing)
            Image(systemName: "book")
                .asIcon(color: .orange)
        }
        .padding()
    }
}

#Preview {
    PositioningBadgesView()
}
