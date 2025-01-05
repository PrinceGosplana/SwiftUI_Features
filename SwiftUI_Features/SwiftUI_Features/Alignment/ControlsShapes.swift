//
//  ControlsShapes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct ControlsShapes: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame")
                .font(.largeTitle)
            Text("Controls & Shapes")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can observe two behaviors when it comes to sizes of views. Some views push out to fill all available space. Some views pull in to be as small as possible to fit their content. You can use frames to change these behaviors.")
            Text("Shapes push out. Use frames to pull them in:")
            HStack {
                Capsule().foregroundStyle(.pink)
                    .frame(width: 150, height: 100)
                Rectangle().foregroundStyle(.pink)
                    .frame(width: 150, height: 75)
            }
            Text("Buttons pull in. Use frames to push them out:")
            Button(action: {}) {
                Text("Button")
            }
            .frame(width: 200, height: 100)
            .border(Color.pink)
        }
    }
}

#Preview {
    ControlsShapes()
}
