//
//  MultiDatePickerDateRange.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct MultiDatePickerDateRange: View {
    @State private var dates: Set<DateComponents> = []
    var range = Date() ..< Calendar.current.date(byAdding: .day, value: 6, to: Date())!
    var body: some View {
        Form {
//            Here are examples of allowing
//            the user to select dates:
//            • In a range
//            • After a date
//            • Before a date
            MultiDatePicker("Date Range", selection: $dates, in: range)
            MultiDatePicker("After Date", selection: $dates, in: Date()...)
            MultiDatePicker("Before Date", selection: $dates, in: ..<Date())
        }
    }
}

#Preview {
    MultiDatePickerDateRange()
}
