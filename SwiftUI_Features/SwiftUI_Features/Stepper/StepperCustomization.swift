//
//  StepperCustomization.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct StepperCustomization: View {
    
    @State private var contrast = 50
    
    var body: some View {
        VStack(spacing: 0) {
            Text("A foreground and background color can be set.")
            Stepper(onIncrement: {}, onDecrement: {}) {
                Text("Custom Stepper")
                    .font(.title)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            .background(Color.blue)
            .foregroundStyle(.white)
            Text("Notice the minus and plus buttons are not affected. The platforms determine how this will be shown.")
            
            Text("You can add images too.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundStyle(Color.white)
                .font(.title)
            Stepper(value: $contrast, in: 0...100) {
                // SwiftUI implicitly uses an HStack here
                Image(systemName: "circle.lefthalf.fill")
                Text(" \(contrast)/100")
            }
            .font(.title)
            .padding(.horizontal)
            .foregroundStyle(.blue)
        }
    }
}

#Preview {
    StepperCustomization()
}
