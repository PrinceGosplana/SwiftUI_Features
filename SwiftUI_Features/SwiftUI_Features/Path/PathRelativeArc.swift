//
//  PathRelativeArc.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 21.12.2024.
//

import SwiftUI

struct PathRelativeArc: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Relative Arc")
                .foregroundStyle(.gray)
            Text("Use .addRelativeArc to create a portion of a circle.")
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding()
                .padding(.bottom)
                .background(Color.purple)
            VStack(spacing: 0.0) {
                DomeShape()
                    .fill(Color.purple)
                Rectangle()
                //        This is the custom shape that is using the relative arc. See code on next page.
                    .fill(Color.indigo)
            }
            .padding(.horizontal)
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    PathRelativeArc()
}

struct DomeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY),
                            radius: rect.midX,
                            startAngle: .degrees(180),
                            delta: .degrees(180))
        return path
    }
}
