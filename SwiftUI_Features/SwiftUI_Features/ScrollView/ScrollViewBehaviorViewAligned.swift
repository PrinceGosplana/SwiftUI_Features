//
//  ScrollViewBehaviorViewAligned.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollViewBehaviorViewAligned: View {
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
                 Color.yellow, Color.orange]
    var body: some View {
        ScrollView(Axis.Set.horizontal, showsIndicators: true) {
            HStack(spacing: 0) {
                ForEach(items, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(item)
                        .padding()
                        .containerRelativeFrame(
                            //    Use width: 214
                            .horizontal,
                            count: 5,
                            span: 4,
                            spacing: 20,
                            alignment: .leading
                            //    Keeps the scroll target view within the
                            //    viewable area.
                            //    The target will snap into place.
                        )
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    ScrollViewBehaviorViewAligned()
}
