//
//  VibrationColorEffect.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct VibrationColorEffect: View {

    @State var trigger = 0
    @State var isActive = false

    var body: some View {
        VStack {
            ExtractedView(title: "Variable Color", subtitle: "Discrete, Indefinite")

            Spacer()
            HStack(spacing: 80) {

                VStack(spacing: 50) {

                    Image(systemName: "wifi")
                        .scaleEffect(4)
                        .symbolEffect(.variableColor, value: trigger)

                    Button("Trigger") {
                        trigger += 1
                    }
                }

                VStack(spacing: 50) {

                    Image(systemName: "wifi")
                        .scaleEffect(4)
                        .symbolEffect(.variableColor, isActive: isActive)

                    Button(isActive ? "Active" : "Inactive") {
                        isActive.toggle()
                    }
                }
            }
            .frame(minWidth: 100, maxWidth: 250)

            Spacer()
        }
    }
}

#Preview {
    VibrationColorEffect()
}
