//
//  OfflineAlertView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 16.08.2024.
//

import SwiftUI

struct OfflineAlertView: ViewModifier {
    @ObservedObject var monitor = NetworkMonitor()

    func body(content: Content) -> some View {
        ZStack {
            content

            if !monitor.hasNetworkConnection {
                ZStack {
                    HStack(spacing: 10) {
                        Image(systemName: "network.slash")
                        Text("No connection")
                    }
                    .padding()
                    .foregroundStyle(.white.opacity(0.8))
                    .background(.black.opacity(0.8))
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .transition(.move(edge: .leading))
            }
        }
    }
}

extension View {
    func offlineAlert() -> some View {
        self.modifier(OfflineAlertView())
    }
}
