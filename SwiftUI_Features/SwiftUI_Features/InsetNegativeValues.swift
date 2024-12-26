//
//  InsetNegativeValues.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 26.12.2024.
//

import SwiftUI

struct InsetNegativeValues: View {
    @State private var insetAmount: CGFloat = 10
    var body: some View {
        VStack(spacing: 10) {
            Text("Inset").font(.largeTitle)
            Text("Negative Values").foregroundStyle(.gray)
            Text("You can EXTEND a shape past its frame by using a negative inset value.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.purple).foregroundStyle(.white)
            Text("Inset by -20")
            Circle()
                .inset(by: -20)
                .fill(Color.purple)
                .frame(width: 100)
                .border(Color.purple)
            Text("Slide to Adjust Inset")
            Rectangle()
                .inset(by: insetAmount)
                .fill(Color.purple)
                .frame(width: 200, height: 200)
                .border(Color.purple)
                .padding(30)
            HStack {
                Text("-100")
                Slider(value: $insetAmount, in: -100...20)
                Text("20")
            }.padding()
        }.font(.title)
    }
}

#Preview {
    InsetNegativeValues()
}
