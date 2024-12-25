//
//  InsetIntroducti.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 25.12.2024.
//

import SwiftUI

struct InsetIntroducti: View {
    @State private var insetAmount: CGFloat = 45
    var body: some View {
        VStack(spacing: 10) {
            Text("Inset").font(.largeTitle)
            Text("Introduction").foregroundStyle(.gray)
            Text("Inset applies only to shapes. It allows you to add padding between the edge of the frame and the shape itself.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.purple).foregroundStyle(.white)
            Text("Inset by 20")
            Circle()
                .inset(by: 20)
                .fill(Color.purple)
                .frame(width: 200)
                .border(Color.purple)
            Text("Slide to Adjust Inset")
            Rectangle()
                .inset(by: insetAmount)
                .fill(Color.purple)
                .frame(width: 300, height: 200)
                .border(Color.purple)
            HStack {
                Text("0")
                Slider(value: $insetAmount, in: 0...95)
                Text("95")
            }.padding()
        }.font(.title)
    }
}

#Preview {
    InsetIntroducti()
}
