//
//  PathQuadCurve.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct PathQuadCurve: View {
    var body: some View {
        VStack(spacing: 20) {
            RoundedBottomRectangle(curveOffset: 30)
                .fill(Color.purple)
                .frame(height: 120)
                .shadow(radius: 8)
                .overlay(
                    Text("Path")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(.top, 40))
                .ignoresSafeArea(edges: .top)
            Text("QuadCurve")
                .foregroundStyle(.gray)
            Text("Here's an example of how you add a curve to your path.")
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding()
                .padding(.bottom)
                .background(
                    RoundedBottomRectangle(curveOffset: -30)
                        .fill(Color.purple)
                        .shadow(radius: 4, y: 4))
            Spacer()
        }.font(.title)
    }
}

#Preview {
    PathQuadCurve()
}

struct RoundedBottomRectangle: Shape {
    // How far up or down you want the curve to extend
    var curveOffset: CGFloat = 10
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY),
                          control: CGPoint(x: rect.midX, y: rect.maxY + curveOffset))
        path.addLine(to: CGPoint(x: 0, y: 0))
        return path
    }
}
