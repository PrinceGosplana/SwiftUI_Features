//
//  ScrollViewBehaviorPaging.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollViewBehaviorPaging: View {
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
                 Color.yellow, Color.orange]
    var body: some View {
        ScrollView(Axis.Set.horizontal, showsIndicators: true) {
            HStack(spacing: 0) {
                ForEach(items, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(item)
                        .padding()
                        .containerRelativeFrame(.horizontal)
                    //    There are 2 steps to enable
                    //    the paging behavior within a
                    //    scrolling container:
                    //    1. Set the target view/layout
                    //    you want the behavior
                    //    applied.
                    //    2. Specify the behavior you
                    //    want on that target.
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    ScrollViewBehaviorPaging()
}
