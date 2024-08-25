//
//  ScrollViewNewWWDC23.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct ScrollViewNewWWDC23: View {
    var body: some View {
//        ScrollView(.horizontal) {
//            let colors: [Color] = [.red, .blue, .green, .yellow, .purple]
//
//            LazyHStack(spacing: 25) {
//                ForEach(colors, id:\.self) { color in
//                    RoundedRectangle(cornerRadius: 15, style: .continuous)
//                        .fill(color.gradient)
//                        .frame(height: 200)
//                        .padding(.horizontal)
//                        .containerRelativeFrame(.horizontal)
//                }
//            }
//            /// Step 1
//            /// scrollTargetLayout() modifier is very important; declare it only for hte main view inside the scrollview and not for all subviews
//            .scrollTargetLayout()
//        }
//        /// Step 2
//        /// Paging will make the scrollview like the default paging view, which takes the entire screen width and height for each page
//        .scrollTargetBehavior(.viewAligned)
//        /// Since paging requires each page to be at its full width, the spacing makes the paging disorienting. Removing that will make the paging work perfectly

        GeometryReader {
            let size = $0.size

            ScrollView(.horizontal) {
                let colors: [Color] = [.red, .blue, .green, .yellow, .purple]

                LazyHStack(spacing: 25) {
                    ForEach(colors, id:\.self) { color in
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(color.gradient)
                            .frame(width: 300, height: 200)
                    }
                }
                .padding(.horizontal, (size.width - 300) / 2)
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
        .frame(height: 200)

    }
}

#Preview {
    ScrollViewNewWWDC23()
}
