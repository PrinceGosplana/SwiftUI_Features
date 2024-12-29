//
//  RadialAsBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct RadialAsBackground: View {
    var body: some View {
        ZStack {
        // Use radial gradient as background view
            RadialGradient(gradient: Gradient(colors: [.white, .cyan]),
        center: UnitPoint.center,
        startRadius: 10, endRadius: 420)
        .ignoresSafeArea()
            
        VStack(spacing: 20) {
        Text("RadialGradient").font(.largeTitle)
        Text("As Background").foregroundStyle(.gray)
        Text("The RadialGradient is a view that can live on its own. Here, it is used as the background.")
        .frame(maxWidth: .infinity)
        .padding()
        .background(.pink)
        .foregroundStyle(.white)
        Spacer()
        }
        .foregroundStyle(.black)
        .font(.title)
        }
    }
}

#Preview {
    RadialAsBackground()
}
