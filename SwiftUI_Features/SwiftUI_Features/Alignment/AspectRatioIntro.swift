//
//  AspectRatioIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct AspectRatioIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Aspect Ratio")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundStyle(.gray)
            Text("The aspectRatio modifier only takes one value. You can think of it as setting the width in comparison to the view's height.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundStyle(Color.white)
            Text("Original Image (1:1)")
            Image(.coffee)
            Text("Width half of Height (1:2)")
            Image(.coffee)
                .resizable()
                .frame(height: 60)
                .aspectRatio(0.5, contentMode: .fit)
            Text("Width 2X of Height (2:1)")
            Image(.coffee)
                .resizable()
                .frame(height: 60)
                .aspectRatio(2, contentMode: .fit)
        }.font(.title)
    }
}

#Preview {
    AspectRatioIntro()
}
