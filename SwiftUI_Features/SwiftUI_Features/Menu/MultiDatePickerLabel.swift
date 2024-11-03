//
//  MultiDatePickerLabel.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct MultiDatePickerLabel: View {
    @State private var dates: Set<DateComponents> = []
    var body: some View {
        VStack {
            MultiDatePicker(selection: $dates) {
                Text("Pick a Date")
                    .font(.largeTitle.weight(.bold))
            }
            //        Although there’s a trailing closure
            //        for the label that allows you to
            //        customize it, there is no visual
            //        representation for it in iOS.
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
    MultiDatePickerLabel()
}
