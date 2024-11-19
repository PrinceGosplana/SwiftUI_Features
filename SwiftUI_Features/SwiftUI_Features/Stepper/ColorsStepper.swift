//
//  ColorsStepper.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.11.2024.
//

import SwiftUI

struct ColorsStepper: View {
    
    @State private var contrast = 50
    
    var body: some View {
        VStack(spacing: 10) {
            Text("There is no built-in way to change the color of the stepper that I have found. Instead, I had to hide the label and apply a color behind it.")

                 Stepper(value: $contrast, in: 0...100) {
            Text("Applying Tint Color (no effect)")
            }
            .tint(.blue)
            HStack {
            Text("My Custom Colored Stepper")
            Spacer()
            Stepper("", value: $contrast)
            .background(Color.teal, in: RoundedRectangle(cornerRadius: 9))
            .labelsHidden() // Hide the label
            }
                 HStack {
                Text("My Custom Colored Stepper")
                Spacer()
                Stepper("", value: $contrast)
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 9))
                    .cornerRadius(9)
                    .labelsHidden() // Hide the label
            }
        }
    }
}

#Preview {
    ColorsStepper()
}
