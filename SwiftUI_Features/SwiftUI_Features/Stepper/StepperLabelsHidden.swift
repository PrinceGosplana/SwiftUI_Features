//
//  StepperLabelsHidden.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.11.2024.
//

import SwiftUI

struct StepperLabelsHidden: View {
    @State private var stepperValue = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper").font(.largeTitle)
            Text("Label Options").foregroundStyle(.gray)
            Text("You can declare a stepper with just a string value for the label.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundStyle(Color.white)
            Stepper("What is your age?", value: $stepperValue)
                .padding(.horizontal)
            
            Text("You can omit a label too. Notice how the stepper view still pushes out horizontally.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundStyle(Color.white)
            Stepper("", value: $stepperValue)
                .padding(.horizontal)
            Text("If you hide the label then no space will be reserved for it.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundStyle(Color.white)
            Stepper("What is your age?", value: $stepperValue)
                .padding(.horizontal)
                .labelsHidden()
        }.font(.title)
    }
}

#Preview {
    StepperLabelsHidden()
}
