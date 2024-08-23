//
//  DynamicContainerRelativeFrameView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 23.08.2024.
//

import SwiftUI

struct DynamicContainerRelativeFrameView: View {

    var body: some View {
        VStack {
            Text("Hello, World!")
                .containerRelativeFrame([.horizontal, .vertical], { length, axis in
                    if axis == .horizontal {
                        length / 3
                    } else {
                        length / 2
                    }
                })
                .background(.teal)

            ScrollView(.horizontal) {
                HStack {
                    ForEach(0 ..< 10) { index in
                        Rectangle()
                            .fill(.cyan)
                            .frame(height: 100)
                            .containerRelativeFrame(.horizontal, count: 5, spacing: 10.0)
                    }
                }
            }
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .containerRelativeFrame([.horizontal, .vertical], alignment: .leading)
//        .containerRelativeFrame([.vertical], { length, _ in
//            length / 2
//        })
//        .containerRelativeFrame([.horizontal, .vertical], { length, axis in
//            if axis == .horizontal {
//                length / 3
//            } else {
//                length / 2
//            }
//        })

    }
}

#Preview {
    DynamicContainerRelativeFrameView()
}
