//
//  MultipleDatePickerView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct MultipleDatePickerView: View {
    @State var selectedDates: Set<DateComponents> = []

    var body: some View {
        MultiDatePicker("Multi picker", selection: $selectedDates)
            .frame(height: 400)
            .padding(20)
            .background {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(.cyan.opacity(0.4))
            }
            .padding()
    }
}

#Preview {
    MultipleDatePickerView()
}
