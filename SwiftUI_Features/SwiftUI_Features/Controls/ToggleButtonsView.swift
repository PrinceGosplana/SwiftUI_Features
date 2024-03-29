//
//  ToggleButtonsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 29.03.2024.
//

import SwiftUI

struct ToggleButtonsView: View {

    @State private var isWiFiOn = false
    @State private var isMicOn = false
    @State private var isVolumeOn = false

    var body: some View {
        VStack(spacing: 10) {
            Form {
                Toggle("Wi-Fi", systemImage: isWiFiOn ? "wifi" : "wifi.slash", isOn: $isWiFiOn)
                    .tint(.purple)
                Toggle("Volume", systemImage: "speaker", isOn: $isVolumeOn)
                    .tint(.orange)
                Toggle("Microfon", systemImage: "mic", isOn: $isMicOn)
                    .tint(.yellow)
            }

            VStack {
                Toggle("Wi-Fi", systemImage: isWiFiOn ? "wifi" : "wifi.slash", isOn: $isWiFiOn)
                    .font(.largeTitle)
                    .tint(.purple)
                    .toggleStyle(.button)
//                    .labelStyle(.iconOnly)
                    .contentTransition(.symbolEffect)
            }
        }
    }
}

#Preview {
    ToggleButtonsView()
}
