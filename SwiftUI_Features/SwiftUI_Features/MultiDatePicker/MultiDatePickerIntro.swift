//
//  MultiDatePickerIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 02.11.2024.
//

import SwiftUI

struct MultiDatePickerIntro: View {
    @State private var dates: Set<DateComponents> = []
    var body: some View {
        VStack {
            MultiDatePicker("Date Range", selection: $dates)
            List {
                Section("Selected Dates") {
                    ForEach(Array(dates), id: \.self) { date in
                        Text("\(date.month!)/\(date.day!)")
                    }
                }
            }
        }
        .font(.title)
        
    }
}

#Preview {
    MultiDatePickerIntro()
}
