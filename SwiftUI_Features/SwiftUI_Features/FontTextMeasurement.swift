//
//  FontTextMeasurement.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.11.2024.
//

import SwiftUI

struct FontTextMeasurement: View {
    @State private var marathon = Measurement(value: 26.2, unit: UnitLength.miles)
    @State private var height = Measurement(value: 2, unit: UnitLength.meters)
    @State private var temperature = Measurement(value: 30, unit: UnitTemperature.celsius)
    var body: some View {
        VStack(spacing: 10) {
            //   Use the format parameter with different types such as Measurement
            Text(marathon, format: .measurement(width: .narrow))
            Text(marathon, format: .measurement(width: .abbreviated))
            Text(marathon, format: .measurement(width: .wide))
            Text("The format is also locale-aware by default.")
            Text(height, format: .measurement(width: .wide))
            Text(temperature, format: .measurement(width: .abbreviated))
            Text("Specify usage to prevent locale-aware.")
            
            Text(height, format: .measurement(width: .wide, usage: .asProvided))
            Text(temperature, format: .measurement(width: .abbreviated, usage: .asProvided))
        }
        .font(.title)
    }
}

#Preview {
    FontTextMeasurement()
}
