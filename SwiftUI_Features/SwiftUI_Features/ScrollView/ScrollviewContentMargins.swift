//
//  ScrollviewContentMargins.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct ScrollviewContentMargins: View {
    
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
                 Color.yellow, Color.orange]
    
    var body: some View {
        VStack {
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
            .contentMargins(.vertical, 60.0)
            .border(Color.black)
            
            
            ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                HStack(spacing: 0) {
                    ForEach(items, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(item)
                            .padding()
                        //    There are 2 steps to enable
                        //    the paging behavior within a
                        //    scrolling container:
                        //    1. Set the target view/layout
                        //    you want the behavior
                        //    applied.
                        //    2. Specify the behavior you
                        //    want on that target.
                    }
                    .frame(width: 440)

                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
            .contentMargins(.bottom, 8, for: .scrollIndicators)
            .border(Color.black)
        }
    }
}

#Preview {
    ScrollviewContentMargins()
}
