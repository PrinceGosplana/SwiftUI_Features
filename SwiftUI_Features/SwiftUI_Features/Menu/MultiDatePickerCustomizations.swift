//
//  MultiDatePickerCustomizations.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct MultiDatePickerCustomizations: View {
    @State private var dates: Set<DateComponents> = [
        DateComponents(year: 2024, month: 11, day: 6),
        DateComponents(year: 2024, month: 11, day: 7),
        DateComponents(year: 2024, month: 11, day: 8)
    ]
    var body: some View {
        MultiDatePicker("Customizations", selection: $dates)
            .tint(.red)
        //    Use tint to alter the colors of the
        //    multi-date picker.
            .foregroundStyle(.purple) // Does nothing
            .background(.quaternary.opacity(0.5),
                        in: RoundedRectangle(cornerRadius: 16))
            .padding()
    }
}

#Preview {
    MultiDatePickerCustomizations()
}
