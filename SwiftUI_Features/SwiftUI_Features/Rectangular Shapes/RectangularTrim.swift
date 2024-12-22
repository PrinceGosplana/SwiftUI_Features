//
//  RectangularTrim.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct RectangularTrim: View {
    @State private var circleProgress: CGFloat = 0.80
    private var circlePercentage: Int { Int(circleProgress * 100.0) }
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Rectangular Shapes").font(.largeTitle)
            Text("Trim Function").font(.title).foregroundStyle(.gray)
            Text("Trim your shape to only show a percentage of it.")
                .frame(maxWidth: .infinity, minHeight: 70)
                .padding()
                .background(Color.blue)
            Rectangle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .overlay(Text("\(circlePercentage)%")
                    .font(.largeTitle).foregroundStyle(.gray))
                .padding(40)
            VStack {
                Text("Progress")
                HStack {
                    Text("0%")
                    Slider(value: $circleProgress)
                    Text("100%")
                }
            }.padding()
        }.font(.title)
    }
}

#Preview {
    RectangularTrim()
}
