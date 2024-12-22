//
//  RectangularColors.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct RectangularColors: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Colors")
                .foregroundStyle(.gray)
            Text("Rectangular shapes can have shape styles applied to them. Color is considered a shape style along with different gradient patterns.")
                .frame(maxWidth: .infinity)
                .padding().background(Color.blue)
                .layoutPriority(1)
            Text("Using .fill(Color.pink)")
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .padding()
            Text("You can also use .foregroundStyle(Color.green)")
            Rectangle()
                .foregroundStyle(Color.green)
                .padding()
            Text("Using .background(Color.blue)")
            RoundedRectangle(cornerRadius: .infinity)
                .background(Color.blue)
                .padding()
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    RectangularColors()
}
