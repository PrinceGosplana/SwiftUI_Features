//
//  Frame_Min_Max.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct Frame_Min_Max: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame").font(.largeTitle).foregroundStyle(.primary)
            Text("Min & Max Sizes").foregroundStyle(.gray)
            Text("A great feature of the frame modifier is the min and max limits you can put on the height or width. If you want the frame adjustable, you can tell it how small it can get and how big it can get.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.pink)
            HStack {
                Image(systemName: "arrow.left")
                Text("Expand Infinitely Horizontally")
                    .padding()
                Image(systemName: "arrow.right")
            }
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            VStack {
                Image(systemName: "arrow.up")
                Text("Expand Infinitely Vertically")
                    .padding()
                Image(systemName: "arrow.down")
            }
            .frame(minHeight: 0, maxHeight: .infinity)
            .background(Color.pink)
        }
        .font(.title)
        .foregroundStyle(.white)
    }
}

#Preview {
    Frame_Min_Max()
}
