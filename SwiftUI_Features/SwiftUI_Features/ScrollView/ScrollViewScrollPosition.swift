//
//  ScrollViewScrollPosition.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.11.2024.
//

import SwiftUI

struct ScrollViewScrollPosition: View {
    var items = [Color.green, Color.blue, Color.purple, Color.pink,
                 Color.yellow, Color.orange]

    @State private var currentColor: Color? = Color.green
    
    var body: some View {
        VStack(spacing: 24.0) {
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(items, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(item)
                            .padding()
                            .containerRelativeFrame(.horizontal)
                        //    You can track the current
                        //    item being displayed within
                        //    a ScrollView with 2 steps:
                        //    1. Create a property to
                        //    track the current item.
                        //    2. Use the scrollPosition
                        //    modifier to assign the
                        //    currently visible item to
                        //    the property.
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
            .scrollPosition(id: $currentColor)
            
            Text("\(currentColor?.description.capitalized ?? "None")")
            
            Button("Go to Orange") {
                withAnimation {
                    currentColor = Color.orange
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    ScrollViewScrollPosition()
}
