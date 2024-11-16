//
//  SliderRangeOfValues.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderRangeOfValues: View {
    @State private var age = 18.0
    let ageFormatter: NumberFormatter = {
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = .spellOut
        return numFormatter
    }()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Slider").font(.largeTitle)
            Text("Range of Values").foregroundStyle(.gray)
            Text("You can also set your own min and max values.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundStyle(Color.black)
            
            Text("What is your age?")
            Slider(value: $age, in: 1...100, step: 1)
                .padding(.horizontal)
            Text("Age is: ") +
            Text("\(ageFormatter.string(from: NSNumber(value: age))!)")
                .foregroundStyle(.orange)
        }.font(.title)
    }
}

#Preview {
    SliderRangeOfValues()
}
