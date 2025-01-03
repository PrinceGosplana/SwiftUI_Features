//
//  SheetPresentationBackgroundInteraction.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.01.2025.
//

import SwiftUI

struct SheetPresentationBackgroundInteraction: View {
    @State private var number1 = 5
    @State private var number2 = 10
    @State private var total = 15
    @State private var showSettings = false
    var body: some View {
        Form {
            Stepper("\(number1)", value: $number1)
            Stepper("\(number2)", value: $number2)
            Button("Present Total") {
                total = number1 + number2
                showSettings = true
            }
            .frame(maxWidth: .infinity)
        }
        .font(.title)
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $showSettings) {
            Form {
                Section("Summary") {
                    LabeledContent("Total", value: total, format: .number)
                }
                //    By default, you cannot interact with the view that presents the sheet. Tapping outside the sheet dismisses it. By using presentationBackgroundInteraction you can allow the user to interact with the presenting view without dismissing the sheet.
            }
            .headerProminence(.increased)
            .presentationDetents([.height(140), .medium, .large])
            .presentationBackgroundInteraction(.enabled(upThrough: .height(140)))
        }
    }
}

#Preview {
    SheetPresentationBackgroundInteraction()
}
