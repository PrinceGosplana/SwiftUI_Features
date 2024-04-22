//
//  PulseEffectView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 09.04.2024.
//

import SwiftUI

struct PulseEffectView: View {

    @State var trigger = 0
    @State var isActive = false

    var body: some View {
        
        ExtractedView(title: "Pulse", subtitle: "Discrete, Indefinite")

        Spacer()

        HStack(alignment: .center) {

            VStack(spacing: 50) {
                Image(systemName: "wifi.exclamationmark")
                    .scaleEffect(4)
                    .symbolEffect(.pulse, value: trigger)

                Button("Trigger") {
                    trigger += 1
                }
            }

            Spacer()

            VStack (spacing: 50) {
                Image(systemName: "wifi.exclamationmark")
                    .scaleEffect(4)
                    .symbolEffect(.pulse, isActive: isActive)

                Button(isActive ? "Active" : "Inactive") {
                    isActive.toggle()
                }
            }

        }
        .frame(width: 250)

        Spacer()
    }
}

#Preview {
    PulseEffectView()
}
