//
//  FontTextMeasurementConversion.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontTextMeasurementConversion: View {
    @State private var marathon = Measurement(value: 26.2, unit: UnitLength.miles)
    //    Sometimes, you will notice a
    //    conversion still is not showing the
    //    unit of measurement you want.
    //    For example, this should be in feet.
    var body: some View {
        VStack(spacing: 24.0) {
            Text(marathon, format: .measurement(width: .wide))
            Text(marathon.converted(to: .feet), format: .measurement(width: .wide))
            Text(marathon.converted(to: .feet), format: .measurement(width: .wide, usage: .asProvided))
        }
        .font(.title)
    }
}

#Preview {
    FontTextMeasurementConversion()
}
