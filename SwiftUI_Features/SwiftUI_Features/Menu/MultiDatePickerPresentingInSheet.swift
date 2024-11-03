//
//  MultiDatePickerPresentingInSheet.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.11.2024.
//

import SwiftUI

struct MultiDatePickerPresentingInSheet: View {
    @State private var showDates = false
    @State private var dates: Set<DateComponents> = []
    private var datesArray: [String] {
        dates.sorted { date1, date2 in
            date1.date! < date2.date!
        }.map { date in
            "\(date.month!)/\(date.day!)"
        }
        //    iOS 16
        //    Here’s an example of sorting the
        //    dates before displaying them.
    }
    
    var body: some View {
        VStack {
            LabeledContent("Dates:") {
                Button {
                    showDates = true
                } label: {
                    if dates.count == 0 {
                        Text("Select")
                    } else {
                        Text(datesArray, format: .list(type: .and, width: .short))
                    }
                }
            }
            .padding()
            Spacer()
        }
        .sheet(isPresented: $showDates) {
            VStack {
                MultiDatePicker("Customizations", selection: $dates)
                Button("Done") { showDates = false }
                    .buttonStyle(.borderedProminent)
            }
            .presentationDetents([.medium])
        }
        .font(.title)
        //    This example shows
        //    all the selected dates
        //    sorted and displayed
        //    using a list formatter.
        //    To learn more about
        //    the list formatter, see
        //    list formatting.
    }
}

#Preview {
    MultiDatePickerPresentingInSheet()
}
