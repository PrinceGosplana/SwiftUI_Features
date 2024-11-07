//
//  PickerInForm.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.11.2024.
//

import SwiftUI

struct PickerInForm: View {
    @State private var selectedDaysOption = "2"
    var numberOfDaysOptions = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        VStack {
            Form {
                Picker("Frequency", selection: $selectedDaysOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                Picker("Frequency", selection: $selectedDaysOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.menu) // Add this modifier to make it use the accent color
                Picker("Frequency", selection: $selectedDaysOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.inline)
                
                Picker("Frequency", selection: $selectedDaysOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.wheel)
            }
        }
        .font(.title)
    }
}

#Preview {
    PickerInForm()
}
