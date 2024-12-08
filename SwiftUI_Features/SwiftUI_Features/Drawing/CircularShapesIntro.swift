//
//  CircularShapesIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct CircularShapesIntro: View {
    var body: some View {
        VStack(spacing: 5) {
            //        There are three circular shapes available in SwiftUI
            Text("Circle")
            Circle()
                .padding()
            Text("Capsule")
            Capsule()
                .padding()
            Text("Ellipse")
            Ellipse()
                .padding()
            Text("(Notice the default colors default to the primary color.)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
        }
        .font(.title)
    }
}

#Preview {
    CircularShapesIntro()
}
