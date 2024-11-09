//
//  ScrollViewHorizontalSafeAreaInset.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.11.2024.
//

import SwiftUI

struct ScrollViewHorizontalSafeAreaInset: View {
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
    Color.yellow, Color.orange]
    var body: some View {
        GeometryReader { gr in
            VStack {
                Spacer()
                ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                    //    Add the
                    //    safeAreaInset to a
                    //    ScrollView to show
                    //    additional views that
                    //    will inset the
                    //    ScrollView's content.
                    HStack {
                        ForEach(items, id: \.self) { item in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(item)
                                .frame(width: gr.size.width - 60)
                        }
                    }
                }
                .padding(.trailing)
                .safeAreaInset(edge: .leading) {
                    VStack(spacing: 10) {
                        Text("Scroll")
                            .font(.body)
                        Image(systemName: "arrow.left.circle")
                    }
                    .frame(maxHeight: .infinity)
                    .padding(.horizontal)
                    //    The first item in the ScrollView
                    //    will be moved just enough to
                    //    start next to the safeAreaInset
                    //    view.
                    //    When you start scrolling, the
                    //    contents of the ScrollView will
                    //    go below your safeAreaInset
                    //    view:
                    //    .background(.regularMaterial)
                    //    In this example, we set the
                    //    edge to leading. But you
                    //    can also use trailing.
                }
                .frame(height: 200)
                Spacer()
            }
        }
    }
}

#Preview {
    ScrollViewHorizontalSafeAreaInset()
}
