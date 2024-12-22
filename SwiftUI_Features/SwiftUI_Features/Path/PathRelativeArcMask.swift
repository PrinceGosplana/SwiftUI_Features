//
//  PathRelativeArcMask.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct PathRelativeArcMask: View {
    let angularGradient = AngularGradient(colors: [.red, .orange, .yellow, .blue, .green],
                                          center: .bottom,
                                          startAngle: .degrees(-180),
                                          endAngle: .degrees(0))
    var body: some View {
        VStack(spacing: 20) {
            Text("Combine your custom shapes with masks to create your own controls.")
            HalfCircleProgress(progress: 0.75)
                .fill(angularGradient)
                .frame(height: 196)
                .background(Color(uiColor: .systemGray5))
                .mask(Image("donut")
                    .resizable()
                    .scaledToFit())
        }
        //    This is a solid black image in the form of a PDF in the asset catalog.
        .font(.title)
    }
}

#Preview {
    PathRelativeArcMask()
}

//This custom shape just draws a half circle. The delta is changed to show the progress.
struct HalfCircleProgress: Shape {
    var progress: CGFloat = 0.7 // 0 to 1
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY),
                            radius: rect.midX,
                            startAngle: .degrees(180),
                            delta: .degrees(180 * progress))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
