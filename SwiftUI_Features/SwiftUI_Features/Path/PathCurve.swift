//
//  PathCurve.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct PathCurve: View {
    let lg = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
    var body: some View {
        VStack(spacing: 20) {
            Text("Path")
                .font(.largeTitle)
            Text("Curve")
                .foregroundStyle(.gray)
            Text("Use .addCurve to create a curved line. You define the end point of the line. Then you define the curve's 'control handle' positions.")
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding()
                .padding(.bottom)
                .background(Color.purple)
            //    This is the custom shape that contains
            //    all the path functions within it.
            ZStack {
                CurvedShape()
                    .fill(lg)
                    .overlay(Image(.coffee))
                //    This has some advantages.
                //    See next page for more details.
                CurvedShape()
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 8,
                                                           lineCap: CGLineCap.round,
                                                           dash: [60, 35]))
                    .rotationEffect(.degrees(10))
            }
            .padding(40)
        }.font(.title)
    }
}

#Preview {
    PathCurve()
}

struct CurvedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let startPoint = CGPoint(x: rect.width * 0.65, y: 0)
        var path = Path()
        path.move(to: startPoint)
        path.addCurve(to: CGPoint(x: rect.width, y: rect.height/2),
                      control1: CGPoint(x: rect.width * 0.85, y: 0),
                      control2: CGPoint(x: rect.width, y: rect.height * 0.1))
        path.addCurve(to: CGPoint(x: rect.width / 2, y: rect.height),
                      control1: CGPoint(x: rect.width, y: rect.height * 0.9),
                      control2: CGPoint(x: rect.width * 0.75, y: rect.height))
        path.addCurve(to: CGPoint(x: 0, y: rect.height * 0.7),
                      control1: CGPoint(x: rect.width * 0.35, y: rect.height),
                      control2: CGPoint(x: 0, y: rect.height))
        path.addCurve(to: CGPoint(x: rect.width * 0.3, y: rect.height * 0.3),
                      control1: CGPoint(x: 0, y: rect.height * 0.4),
                      control2: CGPoint(x: rect.width * 0.17, y: rect.height * 0.45))
        path.addCurve(to: startPoint,
                      control1: CGPoint(x: rect.width * 0.42, y: rect.height * 0.16),
                      control2: CGPoint(x: rect.width * 0.46, y: 0))
        return path
    }
}
