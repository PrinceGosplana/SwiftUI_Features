//
//  SliderIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderIntro: View {
    @State private var sliderValue = 0.5
    var body: some View {
        VStack(spacing: 40) {
            Text("Slider").font(.largeTitle)
            Text("Introduction").foregroundStyle(.gray)
            Text("Associate the Slider with an @State variable that will control where the thumb will be on the slider's track.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundStyle(Color.black)
            Text("Default min value is 0.0 and max value is 1.0")
            Slider(value: $sliderValue)
                .padding(.horizontal)
            
            Text("Value is: ") +
            Text("\(sliderValue)").foregroundStyle(.orange)
        }.font(.title)
    }
}

#Preview {
    SliderIntro()
}
