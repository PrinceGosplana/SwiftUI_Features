//
//  ClaimButton.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.06.2024.
//

import SwiftUI

struct ClaimButton: View {
    
    let configuration: Configuration
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 8) {
                if let icon = configuration.icon {
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                if configuration.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .tint(configuration.textColor)
                }
                Text(configuration.text)
            }
            .padding(12)
            .font(.title2)
            .foregroundColor(configuration.textColor)
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(configuration.borderColor, lineWidth: 2.0)
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(configuration.backgroundColor)
                    }
            }
        }
        .disabled(configuration.disabled)
    }
}


extension ClaimButton {
    struct Configuration {
        let icon: String?
        let text: String
        let textColor: Color
        let backgroundColor: Color
        let borderColor: Color
        let isLoading: Bool
        let disabled: Bool

        // Initializer with default values
        init(
            icon: String? = nil,
            text: String,
            textColor: Color = .purple,
            backgroundColor: Color = .purple.opacity(0.2),
            borderColor: Color = .purple,
            isLoading: Bool = false,
            disabled: Bool = false
        ) {
            self.icon = icon
            self.text = text
            self.textColor = textColor
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.isLoading = isLoading
            self.disabled = disabled
        }

        // Default (normal) state
        static var normal: Configuration {
            Configuration(
                text: "Claim Coupon"
            )
        }

        // Loading state
        static var loading: Configuration {
            Configuration(
                text: "Claiming...",
                isLoading: true,
                disabled: true
            )
        }

        // Disabled state
        static var disabled: Configuration {
            Configuration(
                text: "Claim Coupon",
                textColor: .secondary,
                backgroundColor: .secondary.opacity(0.2),
                borderColor: .secondary.opacity(0.7),
                disabled: true
            )
        }

        // Confirmed state
        static var confirmed: Configuration {
            Configuration(
                icon: "checkmark.circle.fill",
                text: "Claimed!",
                textColor: .green,
                backgroundColor: .green.opacity(0.2),
                borderColor: .green,
                disabled: true
            )
        }
    }
}
