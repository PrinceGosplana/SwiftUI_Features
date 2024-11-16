//
//  SliderCustomization.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderCustomization: View {
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Text("At the time of this writing, there isn't a way to color the thumb. But we can change the background color and apply some other modifiers.")
            
            Slider(value: $sliderValue)
                .padding(.horizontal, 10)
                .background(Color.orange.shadow(radius: 2))
                .padding(.horizontal)
            Text("Use the accentColor modifier to change the color of the track.")
            
            Slider(value: $sliderValue)
                .padding(.horizontal)
                .tint(.orange)
            
            Text("Using shapes and outlines.")
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().stroke(Color.orange, lineWidth: 2))
                .padding(.horizontal)
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().fill(Color.orange))
                .tint(.black)
                .padding(.horizontal)
        }
        .padding()
    }
        
}

#Preview {
    SliderCustomization()
}
