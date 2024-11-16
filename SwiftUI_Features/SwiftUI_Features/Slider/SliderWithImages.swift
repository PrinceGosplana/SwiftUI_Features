//
//  SliderWithImages.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderWithImages: View {
    @State private var sliderValue = 0.5
    var body: some View {
        VStack(spacing: 20) {
            
            Slider(value: $sliderValue,
                   minimumValueLabel: Image(systemName: "tortoise"),
                   maximumValueLabel: Image(systemName: "hare"), label: {})
            .foregroundStyle(.green)
            .padding()
            Slider(value: $sliderValue,
                   minimumValueLabel: Text("0"),
                   maximumValueLabel: Text("1"), label: {})
            .padding()
            VStack {
                Slider(value: $sliderValue)
                    .tint(.orange)
                HStack {
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }
                .foregroundStyle(.orange)
                .padding(.top, 8)
            }.padding()
        }.font(.title)
    }
}

#Preview {
    SliderWithImages()
}
