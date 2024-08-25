//
//  AppStorageRawRepresentableView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

/// Using App Storage Raw Representable now we can also store enum in the App Storage

enum Device: String {
    case iPhone8 = "8"
    case iPhone11 = "11"
    case iPhone12 = "12"
}

struct AppStorageRawRepresentableView: View {

    @AppStorage("deviceType") var device: Device?

    var body: some View {
        VStack(spacing: 10) {
            if let device {
                Text(device.rawValue)
            }

            Button {
                device = .iPhone8
            } label: {
                Text("Select iPhone 8")
            }

            Button {
                device = .iPhone12
            } label: {
                Text("Select iPhone 12")
            }

            Button {
                device = .iPhone11
            } label: {
                Text("Select iPhone 11")
            }
        }
    }
}

#Preview {
    AppStorageRawRepresentableView()
}
