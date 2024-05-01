//
//  StopUsingGeometryReader.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.05.2024.
//

import SwiftUI

struct StopUsingGeometryReader: View {
    var body: some View {
        VStack {

            // bad way
            GeometryReader { proxy in
                HStack{
                    Spacer()

                    Color.orange
                        .frame(width: proxy.size.width / 3)

                    Spacer()
                }
            }
            // new way in iOS 17
            Color.red
                .containerRelativeFrame(.horizontal) { length, _ in
                    length / 3
                }
        }
    }
}

#Preview {
    StopUsingGeometryReader()
}
