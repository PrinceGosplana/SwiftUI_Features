//
//  StepperIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct StepperIntro: View {
    
    @State private var stepperValue = 1
    @State private var values = [0, 1]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title).foregroundStyle(.gray)
            Text("The Stepper can be bound to a variable like this:")
            Stepper(value: $stepperValue) {
                Text("Bound Stepper: \(stepperValue)")
            }.padding(.horizontal)
            Divider()
            Image(systemName: "bolt.fill")
                .font(.title).foregroundStyle(.yellow)
            Text("Or you can run code on the increment and decrement events:")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundStyle(Color.white)
                .font(.title)
            Stepper(onIncrement: {self.values.append(self.values.count)},
                    onDecrement: {self.values.removeLast()}) {
                Text("onIncrement and onDecrement")
            }.padding(.horizontal)
            HStack {
                ForEach(values, id: \.self) { value in
                    Image(systemName: "\(value).circle.fill")
                }
            }.font(.title).foregroundStyle(.green)
        }
    }
}

#Preview {
    StepperIntro()
}
