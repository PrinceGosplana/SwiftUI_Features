//
//  MyDividerPath.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct MyDividerPath: View {
    var body: some View {
        VStack {
            Text("You can't see this path because no modifier is added:")
            Path { path in
                // Set the starting Point:
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 300, y: 10))
            }
            Text("Let's draw a path and modify it with a red stroke:")
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: 5))
            .foregroundStyle(.red)
            Text("Let's create our own divider:")
            MyDivider(lineWidth: 5, color: .purple)
        }
    }
}

#Preview {
    MyDividerPath()
}

struct MyDivider: View {
    var lineWidth: CGFloat = 1
    var color: Color = Color.secondary
//    What other functions
//    does Path have?
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: geometry.size.width - 10, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: self.lineWidth, lineCap: CGLineCap.round))
            .foregroundStyle(self.color)
        }
    }
}
